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
	session[:play_type] = params[:play_type]
	redirect '/play'
end

get '/play' do
	a1 = session[:a1]
	a2 = session[:a2]
	a3 = session[:a3]
	a4 = session[:a4]
	a5 = session[:a5]
	a6 = session[:a6]
	a7 = session[:a7]
	a8 = session[:a8]
	a9 = session[:a9]
    play_type = session[:play_type]
    puts play_type
	if a1 == "O"
	      a1 = "O"
	elsif a1 == ""
		  a1 = ""
	else a1 = "X"
	end
	if a2 == "O"
		a2 = "O"
	elsif a2 == ""
		a2 = ""
	else a2 = "X"
	end
	if a3 == "O"
		a3 = "O"
	elsif a3 == ""
		a3 = ""
	else a3 = "X"
	end
	if a4 == "O"
		a4 = "O"
	elsif a4 == ""
		a4 = ""
	else a4 = "X"
	end
	if a5 == "O"
		a5 = "O"
	elsif a5 == ""
		a5 = ""
	else a5 = "X"
	end
	if a6 == "O"
		a6 = "O"
	elsif a6 == ""
		a6 = ""
	else a6 = "X"
	end
	if a7 == "O"
		a7 = "O"
	elsif a7 == ""
		a7 = ""
	else a7 = "X"
	end
	if a8 == "O"
		a8 = "O"
	elsif a8 == ""
		a8 = ""
	else a8 = "X"
	end
	if a9 == "O"
		a9 = "O"
	elsif a9 == ""
		a9 = ""
	else a9 = "X"
	end
	if play_type == "easy"
		play_type = "easy"
	elsif play_type == "hard"
		play_type = "hard" 
	else play_type == """"
	end	 		
	if play_type == "wimp"
		random = plays_random(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	end
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
	if play_type == "warrior"
		random = comp_play(a1, a2, a3, a4, a5, a6, a7, a8, a9)	
	end
	erb :play, :locals => {:a1 => a1, :a2 => a2, :a3 => a3, :a4 => a4, :a5 => a5, :a6 => a6, :a7 => a7, :a8 => a8, :a9 => a9, :play_type => play_type}
end