# class Car
#   # def initialize
#   #   @speed = 0
#   #   @direction = 'north'
#   # end

#   # def brake
#   #   @speed = 0
#   # end

#   # def accelerate
#   #   @speed += 10
#   # end

#   # def turn(new_direction)
#   #   @direction = new_direction
#   # end

#   def honk_horn
#     puts "Beeeeeeep!"
#   end
# end

# class Bike
  # def initialize
  #   @speed = 0
  #   @direction = 'north'
  # end

  # def brake
  #   @speed = 0
  # end

  # def accelerate
  #   @speed += 10
  # end

  # def turn(new_direction)
  #   @direction = new_direction
  # end

#   def ring_bell
#     puts "Ring ring!"
#   end
# end

module Moveable

  def brake
    @speed = 0
  end

  def accelerate
    @speed += 10
  end

  def turn(new_direction)
    @direction = new_direction
  end
end

class Car
  include Moveable
  def honk_horn
    puts "Beeeeeeep!"
end

  def initialize
    @speed = 0
    @direction = 'north'
  end

end

class Bike 
  include Moveable
  def ring_bell
    puts "Ring ring!"
  end

  def initialize
    @speed = 0
    @direction = 'north'
  end

end

car1 = Car.new

car1.honk_horn
car1.accelerate

bike1 = Bike.new

bike1.ring_bell
bike1.accelerate
