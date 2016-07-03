Given(/^the following order exist$/) do |table|
  table.hashes.each do |order|
    user = User.first(username: order[:user])
    Order.create(id: order[:id],
                 created_on: order[:created_on],
                 active: order[:active],
                 user: user)
    end
end

# Then(/^I should be on the checkout page$/) do
#   expect(page.current_path).to eq '/checkout'
# end
#
# Given(/^I add "([^"]*)" to my order$/) do |table|
#   table.hashes.each do |order|
#     user = User.first(username: order[:user])
#     Order.create(id: order[:id],
#                  created_on: order[:created_on],
#                  active: order[:active],
#                  user: user)
#     end
# end
#
# Given(/^I am on the checkout page$/) do
#   visit '/checkout'
# end
