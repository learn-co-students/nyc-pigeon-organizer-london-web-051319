require "pry"

def name_array
return ["Theo", "Peter Jr.", "Lucky", "Queenie", "Andrew", "Ms. K", "Alex"]
end

def nyc_pigeon_organizer(data) # data == pigeon_data
  name_array
  pigeon_list = {}
  name_array.each do |name|
    pigeon_list[name] = {color:[], gender:[], lives:[]}
  end # it didn't like two commands at once for some reason...
  name_array.each do |name|
    data.each do |attribute, detail|
      data[attribute].each do |detail, pigeon|
        data[attribute][detail].each do |pigeon|
          if pigeon == name # got local loops before final end because the if was missing - watch out for this 
            pigeon_list[pigeon][attribute] << detail.to_s # remembering to change the symbol to a string
          end
        end
      end
    end
  end
  pigeon_list
end