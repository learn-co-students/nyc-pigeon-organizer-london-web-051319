require "pry"

def name_array
return ["Theo", "Peter Jr.", "Lucky", "Queenie", "Andrew", "Ms. K", "Alex"]
end

def nyc_pigeon_organizer(data) # data == pigeon_data
  # write your code here!
  name_array
  pigeon_list = {}
  name_array.each do |name|
    pigeon_list[name] = {color:[], gender:[], lives:[]}
  end # it didn't like two commands at once for some reason...
  name_array.each do |name|
    data.each do |attribute, detail|
      data[attribute].each do |detail, pigeon|
        data[attribute][detail].each do |pigeon|
          pigeon == name
          pigeon_list[pigeon][attribute] << detail.to_s
        # puts true
        end
      end
    end
  binding.pry
  end
end

# def nyc_pigeon_organizer(data) # data == pigeon_data
#   # write your code here!
#   name_array
#   pigeon_list = {}
#   name_array.each do |name|
#     pigeon_list[name] = {color:[], gender:[], lives:[]}
#     data.each do |attribute, detail|
#       data[attribute].each do |detail, pigeon|
#         data[attribute][detail].each do |pigeon|
#           pigeon == name
#           pigeon_list[pigeon][attribute] << detail.to_s
#           # puts true
#           binding.pry
#         end
#       end
#     end
#   end
# end

# WORKS - adds names and structure to new hash
# name_array
# pigeon_list = {}
# name_array.each do |name|
#   pigeon_list[name] = {color:{}, gender:{}, lives:{}}
# end