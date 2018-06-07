def plays_random(a1,a2,a3,a4,a5,a6,a7,a8,a9)
	all_hash = {1 => a1, 2 => a2, 3 => a3, 4 => a4, 5 => a5, 6 => a6, 7 => a7, 8 => a8, 9 => a9}
	puts "all_hash  is #{all_hash}"
	all_squares = [1,2,3,4,5,6,7,8,9]
	puts "all_squares is #{all_squares}"
	used_squares = [] 
	(1..9).each do |i|
		if all_hash[i] != """" 
			used_squares.push(i)
		end
	end
	puts "used_squares  is #{used_squares}"
	available_squares = all_squares - used_squares
	puts "available_squares pick  is #{available_squares}"	
	random_pick = available_squares.shuffle.pop.to_s 
	puts "random pick  is #{random_pick}"
	a = "a"
	out = a + random_pick 
	puts "out is #{out}"
	return out
end

def winner(a1, a2, a3, a4, a5, a6, a7, a8, a9)
   if a1 == "X" && a1 == a2 && a2 == a3 || a4 == "X" && a4 == a5 && a5 == a6 || a7 == "X" && a7 == a8 && a8 == a9 || a1 == "X" && a1 == "X" && a1 == a4 && a4 == a7 || a2 == "X" && a2 == a5 && a5 == a8 || a3 == "X" && a3 == a6 && a6 == a9|| a1 == "X" && a1 == a5 && a5 == a9 || a3  == "X" &&a3 == a5 && a5 == a7
        winner = "X"
   elsif a1 == "O" && a1 == a2 && a2 == a3 || a4 == "O" && a4 == a5 && a5 == a6 || a7 == "O" && a7 == a8 && a8 == a9 || a1 == "O" && a1 == "O" && a1 == a4 && a4 == a7 || a2 == "O" && a2 == a5 && a5 == a8 || a3 == "O" && a3 == a6 && a6 == a9|| a1 == "O" && a1 == a5 && a5 == a9 || a3  == "O" &&a3 == a5 && a5 == a7
        winner = "O"
   end
    puts winner
    return winner
end


def comp_play(a1, a2, a3, a4, a5, a6, a7, a8, a9)
	c_hash = {1 => a1, 2 => a2, 3 => a3, 4 => a4, 5 => a5, 6 => a6, 7 => a7, 8 => a8, 9 => a9}
	all_values_array = [a1, a2, a3, a4, a5, a6, a7, a8, a9]

	wc1 = [1 => a1, 2 => a2, 3 => a3]
	wc2 = [4 => a4, 5 => a5, 6 => a6]
	wc3	= [7 => a7, 8 => a8, 9 => a9]
	wc4 = [1 => a1, 5 => a5, 9 => a9]
	wc5	= [3 => a3, 5 => a5, 7 => a7]
	wc6	= [1 => a1, 4 => a4, 7 => a7]
	wc7	= [2 => a2, 5 => a5, 8 => a8]
	wc8	= [3 => a3, 6 => a6, 9 => a9]
	corners = [1 => a1, 3 => a3, 7 => a7, 9 => a9]
	edges = [2 => a2, 4 => a4, 6 => a6, 8 => a8]
	middle =[5 => a5]
	edges.each do |key, value|
		if value == ""
			$comp_pick = key
		end
	end
	corners.each do |key, value|
		if value == ""
			$comp_pick = key
		end
	end
	winning_Array = [wc1, wc2, wc3, wc4, wc5, wc6, wc7, wc8]
	(0..8).each do |i|
		bell = winning_Array[i]
		x_dig = bell.select {|key, value| value == "X"}
		o_dig = bell.select {|key, value| value == "O"}
		na_dig = bell.select {|key, value| value == ""}
		if x_dig.size == 2
			if o_dig.size < 1
				$comp_pick = na_dig.key("")
			end
		end
	end
	(0..8).each do |i|
		bell = winning_Array[i]
		x_dig = bell.select {|key, value| value == "X"}
		o_dig = bell.select {|key, value| value == "O"}
		na_dig = bell.select {|key, value| value == ""}
		if o_dig.size == 2
			if x_dig.size < 1
				$comp_pick = na_dig.key("")
			end
		end
	end
	
	out = "g" << $comp_pick.to_s
	return out
end

















