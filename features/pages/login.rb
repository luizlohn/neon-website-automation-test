# PageObject of LoginPage

class ErrorMessage < SitePrism::Section
  element :wrong_credentials, 'div.alert.alert-error'
end

class Login < SitePrism::Page
  set_url 'http://zero.webappsecurity.com/login.html'

  element :username, '#user_login'
  element :password, '#user_password'
  element :button_access, 'div.form-actions > input'

  section :error_message, ErrorMessage, '#login_form'
end
