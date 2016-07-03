
Then(/^I should be on the checkout page$/) do
  expect(page.current_path).to eq '/checkout'
end

Given(/^I am on the checkout page$/) do
  visit '/checkout'
end

Given(/^the following order exist$/) do |table|
  table.hashes.each do |order|
    user = User.first(username: order[:user])
    Order.create(id: order[:id],
                 created_on: order[:created_on],
                 active: order[:active],
                 user: user)
    end
end

# Then(/^"([^"]*)" is in "([^"]*)"'s order$/) do |dish_name, user_name|
#   dish = Dish.first(name: dish_name)
#   user = User.first(username: user_name)
#   item = user.orders.last.order_items.detect {|item| item.dish.name == dish_name}
#   expect(item.dish.name).to eq dish.name
# end

Given(/^I have "([^"]*)" added to order$/) do |dish_name|
  orders = Order.first(order_items: orders[:order_items])
  dish = Dish.first(name: dish_name)
  # user = User.first(username: user_name)
  item = orders.last.order_items.detect {|item| item.dish.name == dish_name}
  expect(item.dish.name).to eq dish.name
end
