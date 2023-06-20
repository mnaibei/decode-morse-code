require_relative 'remover'

class Animal
  attr_reader :owner

  def initialize(type, number_of_legs, name = 'Unknown')
    @id = Random.rand(1..1000)
    @name = name
    @number_of_legs = number_of_legs
    @type = type
  end
  # reading inputs for id, type, number_of_legs(getter function)
  attr_reader :id, :type, :number_of_legs
  # reading and returning the name type (getter and setter combined)
  attr_accessor :name

  def speak
    'grrrr'
  end

  def owner=(owner)
    @owner = owner
    owner.animals.push(self) unless owner.animals.include?(self)
  end

  def remove_leg
    remover = Remover.new
    @number_of_legs = remover.decrease(@number_of_legs)
  end
end
