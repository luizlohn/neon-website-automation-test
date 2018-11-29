login = Login.new
Given("I`m on Login screen") do
  login.load
end

When("I fill username and password wrong") do
  login.username.set 'blabla'
  login.password.set 'blabla'
  login.button_access.click
end

Then("Should be displayed a error message") do
  expect(login.error_message.wrong_credentials.text).to have_text($language.get_data('login', 'wrong_message'))
end

