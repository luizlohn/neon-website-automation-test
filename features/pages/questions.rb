class QuestionPage < SitePrism::Page
  set_url "/perguntas"



  class AboutNeonAccount < SitePrism::Section
    element :neon_its_only_credit_card, 'li:nth-child(3)'
  end

  class Questions < SitePrism::Page
    section :about_neon_account, AboutNeonAccount, 'body > main > article > div.content > div > div > ul:nth-child(10)'
  end

end