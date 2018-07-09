class Route
  attr_reader :station_list

  def initialize(station_first, station_last)
    @station_list = [station_first, station_last]
  end

  def station_first
    @station_list[0]
  end

  def station_last
    @station_list[-1]
  end

  def station_add(value)
    arr_list = value.split(/,\s*/)
    arr_list.each { |elem| pp station_list.include?(elem) ? "this elem: #{elem.upcase} already have" : station_list.insert(-2, elem) }
  end

  def station_delete(value)
    arr_list = value.split(/,\s*/)
    if station_list.length - arr_list.length >= 2
      arr_list.each { |elem| pp station_list.include?(elem) ? station_list.delete(elem) : "this elem: #{elem.upcase} not found!" }
    else
      print "You can't do that. Rout must have at least two station! "
    end
  end

  def station_all
    print "List of all stations:\n"
    station_list.each { |elem| print "#{elem}\n" }
  end
end
