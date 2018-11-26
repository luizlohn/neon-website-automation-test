#langauge
class Language

  def get_data(screen, expected)

    string = language(screen)
    string.send(expected).upcase

  end

  def language(screen)

    case screen
      when 'home'
        String.new.string
      when 'question'
        String.new.string
      else
        p 'Cant open'
    end
  end

end
