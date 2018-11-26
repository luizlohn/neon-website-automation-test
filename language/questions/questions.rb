require_relative 'questions_es'
require_relative 'questions_pt'

class QuestionPageString
  def string
    if ENV['LANGUAGE'].eql?('es')
      QuestionPageES.new
    elsif ENV['LANGUAGE'].eql?('pt')
      QuestionPagePT.new
    end
  end
end
