require 'test_helper'
class ProductTest < ActiveSupport::TestCase
    fixtures :rehabs
    
test "product attributes must not be empty" do
rehab = Rehab.new
assert rehab.invalid?
assert rehab.errors[:name].any?
assert rehab.errors[:address].any?
assert rehab.errors[:service].any?
assert rehab.errors[:picture_url].any?
    assert rehab.errors[:price].any? 
end

test "rehab price must be positive" do
rehab = rehab.new(Name: "Good Rehab",
Address: "Nowhere Road 2, Nopolis, Utopia",
Service: "This is not a love song",
Picture_url: "zzz.jpg",
    Price: 10)
    
rehab.price = -1
assert rehab.invalid?
assert_equal ["must be greater than or equal to 0.01"],
    
rehab.errors[:price]
rehab.price = 0
assert rehab.invalid?
assert_equal ["must be greater than or equal to 0.01"],
    
rehab.errors[:price]
rehab.price = 1
assert rehab.valid?
end

def new_rehab(picture_url)
Rehab.new(Name: "Good Rehab", 
Address: "Nowhere Road 2, Nopolis, Utopia",
Service: "This is not a love song",
Picture_url: image_url,
    Price: 10    
)
end

test "picture url" do   
ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg
http://a.b.c/x/y/z/fred.gif }
bad = %w{ fred.doc fred.gif/more fred.gif.more }
ok.each do |picture_url| 
assert new_rehab(picture_url).valid?, 
"#{picture_url} shouldn't be invalid" 
end
bad.each do |picture_url| 
assert new_rehab(picture_url).invalid?, 
"#{picture_url} shouldn't be valid" 
end
end


test "rehab is not valid without a unique title" do
rehab = Rehab.new(name: rehab(:Lake).name,
address: "Via Guido Monzino",
price: 250.0,
service: "Blabla"    
image_url: "fred.gif")
assert rehab.invalid?
assert_equal ["has already been taken"], rehab.errors[:title]
end


end



