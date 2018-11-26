
# Class to control what String language will use
class HomePageString
  def string
    if ENV['LANGUAGE'].eql?('es')
      HomePageES.new
    elsif ENV['LANGUAGE'].eql?('pt')
      HomePagePT.new
    end
  end
end
