class OrderinshopMailer < ApplicationMailer
    default from: 'Giovanni Militello <g.militello.18@aberdeen.ac.uk>'

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.orderinshop_mailer.received.subject
  #
  def received(orderinshop)
    @orderinshop = orderinshop

     mail to: orderinshop.email, subject: 'Booking in the rehab confirmed'
  end

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.orderinshop_mailer.shipped.subject
  #
  def shipped(orderinshop)
    @orderinshop = orderinshop

    mail to: orderinshop.email, subject: 'Holiday in the Rehab booked'
  end
end
