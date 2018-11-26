class Login < SitePrism::Page
  set_url "https://pj.neonpagamentos.com.br/Login"

  element :username, 'body > div.row > div.content > form > div:nth-child(4) > input'
  element :password, '#password'
  element :captcha, '#recaptcha-anchor'
  element :button_access, '#LogButton'

end
