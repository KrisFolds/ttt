require 'sinatra'
require_relative 'ttt.rb'
enable :sessions

get '/' do
	erb :home	
end

post '/play' do
	session[:a1] = params[:a1]
	session[:a2] = params[:a2]
	session[:a3] = params[:a3]
	session[:a4] = params[:a4]
	session[:a5] = params[:a5]
	session[:a6] = params[:a6]
	session[:a7] = params[:a7]
	session[:a8] = params[:a8]
	session[:a9] = params[:a9]
	play_type = params[:play_type]
	if play_type == "warrior"
		redirect '/play_warrior'
	else
		redirect '/play_wimp'
	end
end


get '/play_wimp' do
	a1 = session[:a1]
	a2 = session[:a2]
	a3 = session[:a3]
	a4 = session[:a4]
	a5 = session[:a5]
	a6 = session[:a6]
	a7 = session[:a7]
	a8 = session[:a8]
	a9 = session[:a9]
	if    a1 == "O"
	      a1 = "O"
	elsif a1 == "X"
		  a1 = "X"
	else a1 = """"
	end
	if a2 == "O"
		a2 = "O"
	elsif a2 == "X"
		a2 = "X"
	else a2 = """"
	end
	if a3 == "O"
		a3 = "O"
	elsif a3 == "X"
		a3 = "X"
	else a3 = """"
	end
	if a4 == "O"
		a4 = "O"
	elsif a4 == "X"
		a4 = "X"
	else a4 = """"
	end
	if a5 == "O"
		a5 = "O"
	elsif a5 == "X"
		a5 = "X"
	else a5 = """"
	end
	if a6 == "O"
		a6 = "O"
	elsif a6 == "X"
		a6 = "X"
	else a6 = """"
	end
	if a7 == "O"
		a7 = "O"
	elsif a7 == "X"
		a7 = "X"
	else a7 = """"
	end
	if a8 == "O"
		a8 = "O"
	elsif a8 == "X"
		a8 = "X"
	else a8 = """"
	end
	if a9 == "O"
		a9 = "O"
	elsif a9 == "X"
		a9 = "X"
	else a9 = """"
	end
	random = plays_random(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	puts "random is #{random}"
	if random == "a1"
		a1 = "O"
	elsif random == "a2"
		a2 = "O"
	elsif random == "a3"
		a3 = "O"
	elsif random == "a4"
		a4 = "O"
	elsif random == "a5"
		a5 = "O"
	elsif random == "a6"
		a6 = "O"
	elsif random == "a7"
		a7 = "O"
	elsif random == "a8"
		a8 = "O"
	elsif random == "a9"
		a9 = "O"
	end
	erb :play_wimp, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9}
end

get '/play_warrior' do
	a1 = session[:a1]
	a2 = session[:a2]
	a3 = session[:a3]
	a4 = session[:a4]
	a5 = session[:a5]
	a6 = session[:a6]
	a7 = session[:a7]
	a8 = session[:a8]
	a9 = session[:a9]
	if    a1 == "O"
	      a1 = "O"
	elsif a1 == "X"
		  a1 = "X"
	else a1 = """"
	end
	if a2 == "O"
		a2 = "O"
	elsif a2 == "X"
		a2 = "X"
	else a2 = """"
	end
	if a3 == "O"
		a3 = "O"
	elsif a3 == "X"
		a3 = "X"
	else a3 = """"
	end
	if a4 == "O"
		a4 = "O"
	elsif a4 == "X"
		a4 = "X"
	else a4 = """"
	end
	if a5 == "O"
		a5 = "O"
	elsif a5 == "X"
		a5 = "X"
	else a5 = """"
	end
	if a6 == "O"
		a6 = "O"
	elsif a6 == "X"
		a6 = "X"
	else a6 = """"
	end
	if a7 == "O"
		a7 = "O"
	elsif a7 == "X"
		a7 = "X"
	else a7 = """"
	end
	if a8 == "O"
		a8 = "O"
	elsif a8 == "X"
		a8 = "X"
	else a8 = """"
	end
	if a9 == "O"
		a9 = "O"
	elsif a9 == "X"
		a9 = "X"
	else a9 = """"
	end
	random = comp_play(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	puts "random is #{random}"
	if random == "a1"
		a1 = "O"
	elsif random == "a2"
		a2 = "O"
	elsif random == "a3"
		a3 = "O"
	elsif random == "a4"
		a4 = "O"
	elsif random == "a5"
		a5 = "O"
	elsif random == "a6"
		a6 = "O"
	elsif random == "a7"
		a7 = "O"
	elsif random == "a8"
		a8 = "O"
	elsif random == "a9"
		a9 = "O"
	end
	erb :play_warrior, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9}
end

post '/play_wimp' do
	session[:a1] = params[:a1]
	session[:a2] = params[:a2]
	session[:a3] = params[:a3]
	session[:a4] = params[:a4]
	session[:a5] = params[:a5]
	session[:a6] = params[:a6]
	session[:a7] = params[:a7]
	session[:a8] = params[:a8]
	session[:a9] = params[:a9]
	redirect '/play_wimp'
end

post '/play_warrior' do
	session[:a1] = params[:a1]
	session[:a2] = params[:a2]
	session[:a3] = params[:a3]
	session[:a4] = params[:a4]
	session[:a5] = params[:a5]
	session[:a6] = params[:a6]
	session[:a7] = params[:a7]
	session[:a8] = params[:a8]
	session[:a9] = params[:a9]
	redirect '/play_warrior'
end