station_list = ['kursk', 'leninsk']
arr_list = ['leninsk', 'kievsk', 'kursk', 'komsomolsk']

arr_list.each do |elem|
  if station_list.include?(elem)
    print "this elem: #{elem} already have"
  else
    station_list.insert(1, elem)
  end
end

arr_list.each { |elem| pp station_list.include?(elem) ? "this elem: #{elem} already have" : station_list.insert(-2, elem) }

print station_list.each { |elem| print "station: #{elem}\n"}
