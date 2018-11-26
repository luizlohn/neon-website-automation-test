class StatusPage < SitePrism::Page
  set_url "/perguntas"

  class Services < SitePrism::Section
    element :active_credit_Card, 'div > div:nth-child(13)'
  end

  class Status < SitePrism::Page
    section :about_neon_account, Services, 'body > section > main > div > section'
  end

end