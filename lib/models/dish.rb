class Dish
  include DataMapper::Resource

  property :id, Serial, key: true
  property :name, String, required: true
  property :price, Integer
  property :description, Text
  belongs_to :category
end
