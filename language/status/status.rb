require_relative 'status_es'
require_relative 'status_pt'
# Class to control what String language will use
class StatusPageString
  def string
    if ENV['LANGUAGE'].eql?('es')
      StatusPageES.new
    elsif ENV['LANGUAGE'].eql?('pt')
      StatusPagePT.new
    end
  end
end
