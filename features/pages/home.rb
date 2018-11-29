# PageObject of HomePage
class HomePage < SitePrism::Page
  set_url '/'

  element :menu_questions, 'body > header > nav > ul > li:nth-child(3) > a'
  element :status, 'body > footer > div > div:nth-child(2) > nav > ul > li:nth-child(3) > a'
end
