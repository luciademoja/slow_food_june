module MenuHelpers

  def category_name(id)
    Category.get(id).name
  end

end