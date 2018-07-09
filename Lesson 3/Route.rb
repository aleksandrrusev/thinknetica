class Route
  attr_reader :stations

  def initialize(station_first, station_last)
    @stations = [station_first, station_last]
  end

  def station_add(value)
    stations.include?(value) ? "This elem: #{value} already have" : stations.insert(-2, elem)
  end

  def station_delete(value)
    if stations.length >= 2
      stations.include?(value) ? stations.delete(elem) : "This elem: #{value} not found!"
    else
      print "You can't do that. Rout must have at least two station! "
    end
  end

  def stations_all
    print "List of all stations:\n"
    stations.each { |elem| print "#{elem}\n" }
  end
end
