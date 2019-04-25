require 'pry'

def nyc_pigeon_organizer(data)
	new_hash = {}
	data.each do |attr_val, attr_key_array|
		attr_key_array.each do |color, name_array|
			name_array.each do |names|
				if new_hash[name_array]	== nil
					new_hash[names] = {:color => [], :gender => [], :lives => []}
				end
			end
		end
	end
	# {"Theo"=>{:color=>[], :gender=>[], :lives=>[]},
 	# "Peter Jr."=>{:color=>[], :gender=>[], :lives=>[]},...}	

	data[:color].each do |colors,name_array|
		name_array.each do |bird_name|
			new_hash.keys.each do |bird_name_hash|
				if bird_name == bird_name_hash
					new_hash[bird_name_hash][:color] << colors.to_s
				end
			end	
		end	
	end
	# if the bird name exists in the original data array :color => :purple => [in here], 
	# and the name == one of the new_hash.keys
	# push the :color value to new_hash[names][:color]

	data[:gender].each do |genders,name_array|
		name_array.each do |bird_name|
			new_hash.keys.each do |bird_name_hash|
				if bird_name == bird_name_hash
					new_hash[bird_name_hash][:gender] << genders.to_s
				end
			end	
		end	
	end
	
	data[:lives].each do |location,name_array|
		name_array.each do |bird_name|
			new_hash.keys.each do |bird_name_hash|
				if bird_name == bird_name_hash
					new_hash[bird_name_hash][:lives] << location
				end
			end	
		end	
	end

	new_hash
end













