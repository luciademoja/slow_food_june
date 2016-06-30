
Then(/^I should be on the account creation page$/) do
  expect(page.current_path).to eq "/account_creation"
end

Given(/^I am on the account creation page$/) do
  visit "/account_creation"
end

Given(/^no users exist$/) do
  User.destroy
end

Given(/^the is a user with username "([^"]*)" and password "([^"]*)"$/) do |username, password|
  User.create(username: username, password: password)
end
