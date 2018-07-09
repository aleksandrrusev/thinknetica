class Station
  attr_reader :trains
  def initialize(name)
    @station_name = name
    @trains = []
  end
  
  def train_list
    @trains
  end

  def train_list_by_type(value)
    @trains.select { |train| train.type == value }
  end

  def trains_type(type)
    @trains.each { |train| train.show_train_info if train.type == type }
  end

  def arrival(train)
    @trains << train
  end

  def departure(train)
    @trains.empty? ? "No trains" : "From station departure train: #{@trains.delete(train)}"
  end
end
