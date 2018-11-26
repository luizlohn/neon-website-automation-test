require_relative ''
require_relative ''

class LoginPageSting
  def string
    if ENV['LANGUAGE'].eql?('es')
      LoginPageES.new
    elsif ENV['LANGUAGE'].eql?('pt')
      LoginPagePT.new
    end
  end
end
