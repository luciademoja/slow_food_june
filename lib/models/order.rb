class Order
  include DataMapper::Resource

  property :id, Serial, key: true
  property :created_on, DateTime
  property :active, Boolean
  has n, :order_items

end
