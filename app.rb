require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    params[:name].reverse
  end

  get '/square/:number' do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get '/say/:number/:phrase' do
    seee = []
    params[:number].to_i.times do
      seee << params[:phrase]
    end
    seee
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    one = params[:number1].to_i
    two = params[:number2].to_i
    if params[:operation] == "add"
      (one + two).to_s
    elsif params[:operation] == "subtract"
      (one - two).to_s
    elsif params[:operation] == "multiply"
      (one * two).to_s
    elsif params[:operation] == "divide"
      (one / two).to_s
    else
      "nah"
    end
  end
end