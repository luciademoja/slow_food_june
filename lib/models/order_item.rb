class OrderItem

include DataMapper::Resource

  property :id, Serial, key: true
  belongs_to :order
  has 1, :dish, through: Resource 
end
