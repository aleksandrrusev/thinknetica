class Station
  attr_reader :station_name, :trains

  def initialize(name)
    @station_name = name
    @trains = []
  end

  def train_list_by_type(type)
    @trains.select { |train| train.type == type }
  end

  def station_accept(train)
    @trains << train
  end

  def station_send(train)
    @trains.empty? ? "No trains" : "From station departure train: #{@trains.delete(train)}"
  end
end
