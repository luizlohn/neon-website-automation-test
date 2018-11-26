#langauge
class Language

  def get_data(screen, expected)

    string = language(screen)
    string.send(expected).upcase

  end

  def language(screen)

    case screen
      when 'home'
        HomePageString.new.string
      when 'question'
        QuestionPageString.new.string
      else
        p 'Cant open'
    end
  end

end
