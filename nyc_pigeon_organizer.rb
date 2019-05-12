def nyc_pigeon_organizer(data)
  # write your code here!
  pigeon_list = {}
  data.each do |key, sub_hash|
    sub_hash.each do |info_key, names_array|
      names_array.each do |pigeon|
        
        if pigeon_list.has_key?(pigeon) == false
          pigeon_list[pigeon] = {}
        end

        if pigeon_list[pigeon][key] == nil
          pigeon_list[pigeon][key] = []
        end

        pigeon_list[pigeon][key] << info_key.to_s

      end
    end
  end
  pigeon_list
end
