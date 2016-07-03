class Category
  include DataMapper::Resource

  property :id, Serial, key: true
  property :name, String, unique: true, required: true
  has n, :dishes, through: Resource
end
