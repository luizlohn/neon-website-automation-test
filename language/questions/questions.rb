
# Class to control what String language will use
class HomePageString
  def string
    if ENV['LANGUAGE'].eql?('es')
      QuestionPageES.new
    elsif ENV['LANGUAGE'].eql?('pt')
      QuestionPagePT.new
    end
  end
end
