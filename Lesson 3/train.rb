class Train
  attr_reader :number, :type, :carriage_num, :current_speed, :route

  def initialize(number, type, carriage_num = 1)
    @train_num = number
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

  def atach_carriage
    if @current_speed == 0
      @carriage_num += 1
    else
      puts "Current speed: #{@current_speed}. It's insane! Stop the train before adding carriage."
    end
  end

  def detach_carriage
    if @current_speed == 0 && @carriage_num >= 1
      @carriage_num -= 1
    else
      puts "You have only #{@carriage_num}, there is nothing to detach!"
    end
  end

  def stations
    @route.stations
  end

  def route_add(route)
    @route = route
    @route_index = 0
    station_first.accept_train(self)
  end

  def station_first
    stations[0]
  end

  def station_last
    stations[-1]
  end

  def station_current
    @route.stations[@route_index]
  end
  
  def station_next
    @route.stations[@route_index + 1] if station_current != station_last
  end

  def station_prev
    @route.stations[@route_index - 1] if station_current != station_first
  end

  def goto_station_next
    if station_next
      station_current.send_train(self)
      @route_index += 1
      station_current.accept_train(self)
    else
      print "#{station_last.name} is the last station."
    end
  end

  def goto_station_prev
    if station_prev
      station_current.send_train(self)
      @route_index -= 1
      station_current.accept_train(self)
    else
      print "#{station_first.name} is the first station."
    end
  end
end
