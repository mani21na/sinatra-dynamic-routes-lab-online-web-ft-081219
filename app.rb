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
    answer = ''
    params[:number].to_i.times do
      answer += params[:phrase]
    end 
    answer
  end
end