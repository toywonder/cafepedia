# frozen_string_literal: true

module Admin
  class StoresController < ApplicationController
    before_action :authenticate_user!

    # Storeに関して
    def index
      @stores = Store.page(params[:page]).per(25).includes(:mainstore)
      @mainstores = Mainstore.all
      @allstores = Store.all
      respond_to do |format|
        format.html
        format.csv do
          send_data render_to_string, filename: 'stores.csv', type: :csv
        end
      end
    end

    def show
      @store = Store.find(params[:id])
    end

    def edit
      @store = Store.find(params[:id])
    end

    def update
      @store = Store.find(params[:id])
      if @store.update(store_params)
        # updateが完了したら一覧ページへリダイレクト
        redirect_to admin_stores_path
      else
        # updateを失敗すると編集ページへ
        render 'edit'
      end
    end

    private

    def store_params
      params.require(:store).permit(:name, :prefecture, :city, :other_address,
        :tel, :business_hour, :chair, :hp, :wifi,
        :socket, :smoking, :iccard, :is_open, :lat, :lng)
    end
  end
end
