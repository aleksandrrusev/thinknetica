class Route
  attr_reader :stations

  def initialize(station_first, station_last)
    @stations = [station_first, station_last]
  end

  def station_first
    stations[0]
  end

  def station_last
    stations[-1]
  end

  def edge_stations?(station)
    [station_first, station_last].include?(station)
  end

  def station_add(station)
    if !stations.include?(station)
      stations.insert(-2, station)
    else
      puts "Station: #{station} already have."
    end
  end

  def station_delete(station)
    if stations.include?(station) && !edge_stations?(station)
      stations.delete(station) 
    else
      puts "Station #{station} is not found or it's a first or last one!"
    end
  end

  def stations_all
    puts "List of all stations:"
    stations.each { |elem| puts "Station name:#{elem.station_name}" }
  end
end
