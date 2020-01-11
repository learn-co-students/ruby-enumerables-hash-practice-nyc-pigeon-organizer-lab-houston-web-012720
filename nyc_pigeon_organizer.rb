require 'pry'




def nyc_pigeon_organizer(data)
  result = {}
  names = []
  data.each { |attribute, attribute_data|
    attribute_data.each { |category, category_data|
      category_data.each { |x|
        if !names.include? x
        names << x
        end
      }
    }
  }
  names.each do |name|
    data.each do |attribute, attribute_data|
      #binding.pry
      selected_keys = data[attribute].select do |category, category_data| 
        category_data.include? name
      end
      selected_array = selected_keys.map {|category, category_data| category.to_s}
      if result[name]
        result[name][attribute] = selected_array
      else 
        result[name] = {attribute => selected_array}
      end
    end
  end
  result
end
