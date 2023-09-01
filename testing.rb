require_relative 'person'
require_relative 'capitalize'
require_relative 'trimmer'
require_relative 'student'
require_relative 'classroom'
require_relative 'book'
require_relative 'rental'

puts '--!!-- Testing decorate'

person = Person.new(22, 'maximilianus')
person.correct_name
capitalized_person = Capitalize.new(person)
puts capitalized_person.correct_name
capitalized_trimmed_person = Trimmer.new(capitalized_person)
puts capitalized_trimmed_person.correct_name
puts

puts '--!!-- Testing relations'
puts '--!!-- Relation class <-> student'

student1 = Student.new(25, 1, 'Mauricio')
classroom1 = Classroom.new('A101')

print classroom1.students
print student1.classroom

classroom1.add_student(student1)

print classroom1.students
print student1.classroom
puts
puts

puts '--!!-- Relation book <-> rental'

book = Book.new('Librito', 'Escritorsito')

book.rental_new(student1, '01-08-2023')

print book.rentals
puts
puts

puts '--!!-- Relation person <-> rental'

person.add_rental(book, '02-08-2023')

print person.rentals
puts puts
print book.rentals.count
