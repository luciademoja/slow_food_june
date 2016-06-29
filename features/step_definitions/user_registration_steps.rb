Then(/^I should be on the registration page$/) do
  expect(page.current_path).to eq "/user_registration"
end
