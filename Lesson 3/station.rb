class Station
  attr_reader :name, :trains

  def initialize(name)
    @name = name
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
