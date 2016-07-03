
Then(/^I should be on the dish display page$/) do
  expect(page.current_path).to eq '/dishes'
end

Given(/^I am on the dish display page$/) do
  visit '/dishes'
end

Given(/^the following dishes exist$/) do |table|
  table.hashes.each do |dish|
    category = Category.first(name: dish[:category])
    Dish.create(name: dish[:name],
                price: dish[:price],
                description: dish[:description],
                category: category)
  end
end

Given(/^there are no dishes in the system$/) do
  Dish.destroy
end


Given(/^I click on "([^"]*)" for "([^"]*)"$/) do |link, dish|
  dish = Dish.first(name: dish)
  within("##{dish.id}") do
    click_link_or_button link
  end
end

Then(/^"([^"]*)" should be added to "([^"]*)"'s order$/) do |dish_name, user_name|
  dish = Dish.first(name: dish_name)
  user = User.first(username: user_name)
  item = user.orders.last.order_items.detect {|item| item.dish.name == dish_name}
  expect(item.dish.name).to eq dish.name
end

Then(/^I should see "([^"]*)" within "([^"]*)"$/) do |dish_name, category_name|
  category = Category.first(name: category_name)
  within("#cat_#{category.id}") do
    expect(page).to have_content dish_name
  end
end

Given(/^the following categories exists$/) do |table|
  table.hashes.each do |category|
    Category.create(category)
  end
end
