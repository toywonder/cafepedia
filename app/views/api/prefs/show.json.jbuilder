# frozen_string_literal: true

json.set! :stores do
  json.array! @stores do |store|
    json.extract! store,
      :id,
      :name,
      :prefecture,
      :city,
      :other_address,
      :access,
      :tel,
      :business_hour,
      :chair,
      :hp,
      :wifi,
      :socket,
      :smoking,
      :iccard,
      :lat,
      :lng,
      :distance,
      :mainstore_id,
      :mainstore,
      :created_at,
      :updated_at
  end
end
