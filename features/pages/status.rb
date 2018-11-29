# PageObject of Services
class Services < SitePrism::Section
  element :active_credit_card, 'div > div:nth-child(13) > div'
end

class Status < SitePrism::Page
  set_url '/atualizacoes/status/'

  section :services, Services, 'body > section > main > div > section'
end
