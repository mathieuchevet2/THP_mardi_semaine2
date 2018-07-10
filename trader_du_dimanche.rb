def trader_du_dimanche
	max_dif = 0
	max_i = 20 
	min_i = 20
	dif = 0
	arr = [17,3,6,9,15,8,6,1,10]
	arr.map.with_index do |n, i|
		arr.map.with_index do |n2, i2|
			if i2 > i && n < n2			 
				dif = n2 - n			
			  if dif > max_dif	
					max_i = i2
					min_i = i
					max_dif = n2 - n
				end			
			end
		end
	end
	puts max_dif, max_i, min_i
end

puts trader_du_dimanche

def trader_du_lundi
	jour_1 = { :GOO => 15, :MMM => 14, :ADBE => 12, :EA=> 13, :BA => 8, :KO => 10, :XOM => 20, :GPS => 7, :MCD => 11, :DIS => 15, :CRM => 6, :JNJ => 10 }
	jour_2 = { :GOO => 8, :MMM => 20, :ADBE => 3, :EA=> 10, :BA => 5, :KO => 19, :XOM => 12, :GPS => 6, :MCD => 15, :DIS => 9, :CRM => 10, :JNJ => 17 }
	jour_3 = { :GOO => 3, :MMM => 8, :ADBE => 15, :EA=> 5, :BA => 10, :KO => 5, :XOM => 15, :GPS => 13, :MCD => 10, :DIS => 18, :CRM => 5, :JNJ => 14 }
	jour_4 = { :GOO => 17, :MMM => 3, :ADBE => 6, :EA=> 9, :BA => 15, :KO => 6, :XOM => 8, :GPS => 1, :MCD => 10, :DIS => 15, :CRM => 18, :JNJ => 3 }
	jour_5 = { :GOO => 8, :MMM => 18, :ADBE => 4, :EA=> 6, :BA => 15, :KO => 18, :XOM => 3, :GPS => 12, :MCD => 19, :DIS => 3, :CRM => 7, :JNJ => 9 }
	jour_6 = { :GOO => 10, :MMM => 12, :ADBE => 8, :EA=> 3, :BA => 18, :KO => 20, :XOM => 5, :GPS => 11, :MCD => 3, :DIS => 9, :CRM => 8, :JNJ => 15 }
	jour_7 = { :GOO => 17, :MMM => 14, :ADBE => 2, :EA=> 17, :BA => 7, :KO => 13, :XOM => 1, :GPS => 15, :MCD => 15, :DIS => 10, :CRM => 9, :JNJ => 17 }
	
	a = jour_1.zip( jour_2, jour_3, jour_4, jour_5, jour_6, jour_7)

	map_elem(a[0])
	map_elem(a[1])
	map_elem(a[2])
	map_elem(a[3])
	map_elem(a[4])
	map_elem(a[5])
	map_elem(a[6])
	
end

def map_elem(arr)
	max_dif = 0
	max_i = 20 
	min_i = 20
	dif = 0
	i = 0
	arr.map.select do |k, v|
		i += 1
		i2 = 0
		arr.map.select do |k2, v2|
			i2 += 1
			if i2 > i && v.to_i < v2.to_i		 
				dif = v2 - v			
			  if dif > max_dif	
					max_i = i2
					min_i = i
					max_dif = v2 - v
				end			
			end
		end
	end
	puts "Il faut acheter le jour #{min_i} puis revendre le jour #{max_i} pour un benefice de #{max_dif}"
end

puts trader_du_lundi

