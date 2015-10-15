require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize(capacity=DEFAULT_CAPACITY)
    @bikes = []
    #added initialized array of broken bikes
    @broken_bikes = []
    @capacity = capacity
  end

  def release_bike
    raise 'There is no working bike present' if empty?
    @bikes.pop
  end


    # we tried XD

    # index = (@bikes.length) -1
    # while true
    #   if index < 0
    #     raise 'No available working bikes'
    #
    #   elsif (@bikes[index]).to_s.include?("broken")
    #     index -= 1
    #   else
    #     return @bikes.slice!(index)
    #       @bikes
    #
    #   end
    # end

      # if @bikes[index].to_s.include?("broken")
      #   index -= 1
      # elsif !(@bikes[index].to_s.include?("broken"))
      #   return @bikes.slice[index]
      #
      # end


  def dock(bike)
    raise 'The docking station is full' if full?
    # we alreay require 'bike.rb' so we can check @broken
    bike.broken == true ? @broken_bikes << bike : @bikes << bike
  end

  def capacity=(capacity)
    @capacity = capacity
  end


  private

  attr_reader :bikes

# added @broken bikes to the total length
  def full?
    (@bikes.length + @broken_bikes.length) >= @capacity
  end

  def empty?
    @bikes.empty?
  end

end
