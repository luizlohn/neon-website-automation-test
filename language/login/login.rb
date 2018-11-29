require_relative '../login/login_es'
require_relative '../login/login_pt'

class LoginPageSting
  def string
    if ENV['LANGUAGE'].eql?('es')
      LoginPageES.new
    elsif ENV['LANGUAGE'].eql?('pt')
      LoginPagePT.new
    end
  end
end
