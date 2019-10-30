require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @reverse_name = params[:name].reverse!
    "#{@reverse_name}"
  end 
  
  get '/square/:number' do
    @square_num = params[:number].to_i 
    "#{@square_num**2}"
  end 
  
  get '/say/:number/:phrase' do
    @num = params[:number].to_i
    @phrase = params[:phrase]
    @phrase_array = []
    @num.times do
      @phrase_array << @phrase
    end
    "#{@phrase_array.join(" "}"
  end 
end