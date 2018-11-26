require_relative '../language/questions/questions'
require_relative '../language/status/status'

class Language

  def get_data(screen, expected)

    string = language(screen)
    string.send(expected)

  end

  def language(screen)

    case screen
      when 'home'
        HomePageString.new.string
      when 'questions'
        QuestionPageString.new.string
      when 'status'
        StatusPageString.new.string
      else
        p 'Cant open'
    end
  end

end
