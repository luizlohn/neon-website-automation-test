# PageObject of QuestionsPage
class AboutNeonAccount < SitePrism::Section
  element :neon_its_only_credit_card, 'li:nth-child(3) > label'
  element :neon_its_only_credit_card_answer, 'li:nth-child(3) > div'

end

class QuestionPage < SitePrism::Page
  set_url "/perguntas"
  section :about_neon_account, AboutNeonAccount, 'body > main > article > div > div > ul:nth-child(10)'
end
