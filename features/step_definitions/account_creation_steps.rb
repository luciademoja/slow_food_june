Then(/^I should be on the registration page$/) do
  expect(page.current_path).to eq "/account_creation"
end

Given(/^I am on the registration page$/) do
  visit "/account_creation"
end
