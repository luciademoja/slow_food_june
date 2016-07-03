Given(/^I am on the order page$/) do
  visit '/final_order'
end

Then(/^I should be on the checkout page$/) do
  expect(page.current_path).to eq '/checkout'
end
