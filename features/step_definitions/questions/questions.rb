home_page = HomePage.new

Given('Im on Questions Page') do
  home_page.load
  home_page.menu_questions.click
end

question_page = QuestionPage.new
When('I click in the question') do
  page.execute_script('arguments[0].scrollIntoView();', question_page.about_neon_account.neon_its_only_credit_card)
  question_page.about_neon_account.neon_its_only_credit_card.click
  sleep 10
end

Then('I should display a text about Neon its only credit card question') do
  expect(question_page.about_neon_account.neon_its_only_credit_card_answer.text).to have_text($language.get_data('questions', 'neon_is_only_card_answer'))
end
