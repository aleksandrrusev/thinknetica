class Train
  attr_reader :number, :type, :carriage_num, :route

  def initialize(number, type, carriage_num = 1)
    @trains = number
    @type = type
    @carriage_num = carriage_num
    @current_speed = 0
  end

  def increase_speed(value)
    @current_speed += value
    puts "Speed was increased by #{value} and now is #{@current_speed}!"
  end

  def reduce_speed(value)
    @current_speed < value ? @current_speed = 0 : @current_speed -= value
    puts "Speed was reduce by #{value} and now is #{@current_speed}!"
  end

  def atach_carriage(value)
    @current_speed == 0 ? @carriage_num += value : "Current speed: #{@current_speed}. It's insane! Stop the train before adding carriage."
  end

  def detach_carriage(value)
    @current_speed == 0 && @carriage_num >= 2 ? @carriage_num -= value : "You have only #{@carriage_num}, there is nothing to detach!"
  end

  def train_route(route)
    @route = route
    @route_index = 0
    station_first.arrival(self)
  end

  def station_current
    @route.station_list[@route_index]
  end

  def station_first
    @route.station_list[0]
  end
  
  def station_last
    @route.station_list[-1]
  end

  def station_next
    station_current != station_last ? @route.station_list[@route_index + 1] : nil
  end

  def station_prev
    station_current != station_first ? @route.station_list[@route_index - 1] : nil
  end

  def goto_station_next
    if station_current != station_last
      station_current.departure(self)
      @route_index += 1
      station_current.arrival(self)
    else
      print "#{station_last} is the last station."
    end
  end

  def goto_station_prev
    if station_current != station_first
      station_current.departure(self)
      @route_index -= 1
      station_current.arrival(self)
    else
      print "#{station_last} is the first station."
    end
  end
end
