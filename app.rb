require_relative 'config/environment'
require_relative 'models/text_analyzer.rb'

class App < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/' do
<<<<<<< HEAD
    @analyzed_text = TextAnalyzer.new(params[:user_text])
   
    erb :results
  end
=======
  text_from_user = params[:user_text]
 
  @analyzed_text = TextAnalyzer.new(text_from_user)
 
  erb :results
 end
>>>>>>> c1af519edaa7f807fdf0944626dae8e2accbece3
end
