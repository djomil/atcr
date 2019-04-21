# Preview all emails at http://localhost:3000/rails/mailers/orderinshop
class OrderinshopPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/orderinshop/received
  def received
    OrderinshopMailer.received
  end

  # Preview this email at http://localhost:3000/rails/mailers/orderinshop/shipped
  def shipped
    OrderinshopMailer.shipped
  end

end
