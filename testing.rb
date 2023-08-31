require_relative 'person'
require_relative 'capitalize'
require_relative 'trimmer'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
