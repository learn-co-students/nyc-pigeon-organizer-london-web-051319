def nyc_pigeon_organizer(data)
  # write your code here!
  new_hash = {}
  data.each do |gen_detail, specifics|
    specifics.each do |spec_detail, names|
      names.each do |pigeon|
        new_hash[pigeon] = {} if new_hash[pigeon].nil?
        new_hash[pigeon][gen_detail] = [] if new_hash[pigeon][gen_detail].nil?
        new_hash[pigeon][gen_detail] << spec_detail.to_s
      end
    end
  end
  new_hash
end
