require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'

get '/' do
	erb "Hello! <a href=\"https://github.com/bootstrap-ruby/sinatra-bootstrap\">Original</a> pattern has been modified for <a href=\"http://rubyschool.us/\">Ruby School</a>"			
end

get '/about' do
	erb :about
end

get '/visit' do
	erb :visit
end

post '/visit' do
	@username = params[:username]
	@datetime = params[:datetime]
	@phone = params[:phone]
	@barber = params[:barber]


	erb "Done! We are waiting you at #{@datetime} and call to you wiyh number #{@phone}, #{@username}. Your barber is #{@barber}"
end

