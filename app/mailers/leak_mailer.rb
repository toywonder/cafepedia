# frozen_string_literal: true

class LeakMailer < ApplicationMailer
  def send_mail(leak)
    @leak = leak
    mail(
      from: 'toy.wonder70@gmail.com',
      to: 'toy.wonder70@gmail.com',
      subject: 'リーク通知 | Cafepedia'
    )
  end
end
