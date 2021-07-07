require "pry"
def nyc_pigeon_organizer(data)
  # write your code here!
  name = []
  data[:gender].keys.each{|e| data[:gender][e].each{|n| name << n}}

  list = []
  data.keys.each{|e| data[e].keys.each{|k| list << [k.to_s , data[e][k]]}}

  my_list = {}
  i = 0
  while i < name.length do
    my_list[name[i]] = {}
    my_list[name[i]][:color] = []
    my_list[name[i]][:gender] = []
    my_list[name[i]][:lives] = []
    j = 0
    while j < list.length do
      k = 0
      while k < list[j][1].length do
        if data[:color].keys.include?(list[j][0].to_sym)
          if list[j][1][k] == name[i]
            my_list[name[i]][:color] << list[j][0]
          end
        end
        if data[:gender].keys.include?(list[j][0].to_sym)
          if list[j][1][k] == name[i]
            my_list[name[i]][:gender] << list[j][0]
          end
        end
        if data[:lives].keys.include?(list[j][0])
          if list[j][1][k] == name[i]
            my_list[name[i]][:lives] << list[j][0]
          end
        end
        k+=1
      end
      j += 1
    end
    i+=1
  end
  my_list
end


