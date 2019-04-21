require 'test_helper'

class OrderinshopMailerTest < ActionMailer::TestCase
    
test "received" do
 mail = OrderinshopMailer.received(orderinshops(:one))
 assert_equal "Booking in the rehab confirmed'", mail.subject
 assert_equal ["dave@example.org"], mail.to
 assert_equal ["depot@example.com"], mail.from
 assert_match /1 x Da Gama Relief/, mail.body.encoded
end

test "shipped" do
 mail = OrderinshopMailer.shipped(orderinshops(:one))
 assert_equal "Holiday in the Rehab booked", mail.subject
 assert_equal ["dave@example.org"], mail.to
 assert_equal ["depot@example.com"], mail.from
 assert_match /<td[^>]*>1<\/td>\s*<td>Da Gama Relief<\/td>/,
 mail.body.encoded
end

end

