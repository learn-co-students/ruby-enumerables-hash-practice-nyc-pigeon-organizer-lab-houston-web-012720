def nyc_pigeon_organizer(data)
  pigeon_list = {}
  data.each do |key, value|
    value.each do |new_value, names|
      names.each do |name|
        
        if !pigeon_list[name]
          pigeon_list[name] = {}
        end

        if !pigeon_list[name][key]
          pigeon_list[name][key] = []
        end

        pigeon_list[name][key] << new_value.to_s

      end
    end
  end
  pigeon_list
end


# pigeon_list = { ## created by pigeon_list = {}
#  "name" => { ## created by names.each do |name| which goes through the data and looks for the name.                then creates new hash with the name as the key if it doesnt already exist in the new                pigeon_list hash. (if !pigeon_list[name] ! means if it doesnt exist.
#    :key => ["new_value", "new_value"], ## creates a key within the pigeon name using the value.each                                           iteration. !pigeon_list[name][key] then puts it in. 
#    (repeat) ## repeats till it gets all data from specified pigeon name. Then the data.each method                repeats the process and finds the next pigeon name to get data for and put into the                new hash. 
#  }
# }