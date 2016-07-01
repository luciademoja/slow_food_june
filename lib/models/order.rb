class Order
  include DataMapper::Resource

  property :id, Serial, key: true
  property :created_on, DateTime
  property :active, Boolean, default: true
  has n, :order_items
  belongs_to :user
  

end
