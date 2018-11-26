status_page = Status.new

Given("Im on Status Page") do
  status_page.load
end

When("I veirfy Active credit card service") do
  p status_page.services.active_credit_card.text
  expect(status_page.services.active_credit_card.text).to have_text($language.get_data('status','active_credit_card'))
end

Then("Should be displayed a success icon") do
  expect(status_page.services.active_credit_card[:class]).to have_text('inline-card is-success')
end
