require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do 
    erb :index
  end 
  
  get '/new' do 
    erb :create_puppy
  end 
  
  post '/display_puppy' do 
    @puppy = Puppy.new(params[:name], params[:breed], params[:age])
    @puppy = Puppy.all
    erb :list_puppies
  end 
  
  get '/list_puppies' do 
    @puppies = Puppy.all
    erb :list_puppies
  end 
end