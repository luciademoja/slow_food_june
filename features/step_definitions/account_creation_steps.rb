
Then(/^I should be on the account creation page$/) do
  expect(page.current_path).to eq "/account_creation"
end

Given(/^I am on the account creation page$/) do
  visit "/account_creation"
end
