require './practice'
require './dog'
require './spider'
require './owner'

dog = Dog.new('black', 'Rax')
spider = Spider.new(85, 'Bob')
animal = Animal.new('lion', 4, 'Some name')

alex = Owner.new('Alex')
alex.animals

dog.owner
alex.add_animal(dog)
dog.owner
dog.owner.name
alex.animals

spider.owner
alex.add_animal(spider)
spider.owner
puts spider.owner.name
alex.animals

animal.owner
alex.add_animal(animal)
animal.owner
puts animal.owner.name

puts alex.animals.count
puts alex.animals.first.name
puts alex.animals.first.number_of_legs

second_animal = Animal.new('cat', 4, 'Kitty')
puts second_animal.owner
puts alex.animals.count

second_animal.owner = alex

puts alex.animals.count

puts alex.animals.last.name
