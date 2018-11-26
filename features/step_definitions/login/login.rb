login = Login.new
Given("I`m on Login screen") do
  login.load
end

When("I fill username and password wrong") do
  login.username.set 'blabla'
  login.password.set 'blabla'
  login.captcha.click
  login.button_access.click
end

Then("Should be displayed a error message") do
  pending # Write code here that turns the phrase above into concrete actions
end

