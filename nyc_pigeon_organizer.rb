def nyc_pigeon_organizer(data)
  # write your code here!
  sorted_data = {}
  data[:color].each { |color, names|
    names.each { |name|
      if !sorted_data.has_key?(name)
          sorted_data[name] = {:color => [], :gender => [], :lives => []}
      end
      #puts color.to_s
      sorted_data[name][:color] << color.to_s
    }
  }
  data[:gender].each { |gender, names|
    names.each { |name|

      sorted_data[name][:gender] << gender.to_s
    }
  }
  data[:lives].each { |lives, names|
    names.each { |name|

      sorted_data[name][:lives] << lives.to_s
    }
  }
  sorted_data
end

def test
  pigeon_data = {
  :color => {
    :purple => ["Theo", "Peter Jr.", "Lucky"],
    :grey => ["Theo", "Peter Jr.", "Ms. K"],
    :white => ["Queenie", "Andrew", "Ms. K", "Alex"],
    :brown => ["Queenie", "Alex"]
  },
  :gender => {
    :male => ["Alex", "Theo", "Peter Jr.", "Andrew", "Lucky"],
    :female => ["Queenie", "Ms. K"]
  },
  :lives => {
    "Subway" => ["Theo", "Queenie"],
    "Central Park" => ["Alex", "Ms. K", "Lucky"],
    "Library" => ["Peter Jr."],
    "City Hall" => ["Andrew"]
  }
}
pp nyc_pigeon_organizer(pigeon_data)
end
