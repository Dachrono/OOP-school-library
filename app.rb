require_relative 'student'
require_relative 'classroom'
require_relative 'teacher'
require_relative 'book'
require_relative 'rental'

# app class
class App
  def initialize
    @books = []
    @people = []
    @rentals = []
  end

  def list_all_books
    puts 'List of books'

    @books.each_with_index do |book, idx|
      puts "\n #{idx}) Title: #{book.title} written by: #{book.author}"
    end
  end

  def list_all_people
    puts 'List of people'

    @people.each_with_index do |person, idx|
      puts "\n #{idx}) #{person.type} id: (#{person.id}) Name: #{person.name} age: #{person.age}"
    end
  end

  def add_student(age, name)
    puts 'Classroom'
    clas = gets.chomp.strip
    puts 'Parent permission select Y(yes)/N(no)'
    per = gets.chomp.strip
    per = per == 'y'

    classroom = Classroom.new(clas)
    student = Student.new(classroom, 'Student', age, name, parent_permision: per)
    @people << student
    puts 'Student created succesfully'
  end

  def add_teacher(age, name)
    puts 'Specialization'
    spec = gets.chomp.strip

    teacher = Teacher.new(spec, 'Teacher', age, name)
    @people << teacher
    puts 'Teacher created succesfully'
  end

  def create_person
    puts "Select type of person to register \n Student select 1 - Teacher select 2"
    option = gets.chomp.strip.to_i
    puts 'Age'
    age = gets.chomp.strip.to_i
    puts 'Name'
    name = gets.chomp.strip

    add_student(age, name) if option == 1

    add_teacher(age, name) if option == 2
  end

  def create_book
    puts 'Please share me the book data'

    puts 'Title'
    title = gets.chomp.strip

    puts 'Author'
    author = gets.chomp.strip

    book = Book.new(title, author)
    @books << book

    puts 'Book created succesfully'
  end

  def select_book
    puts 'Select number of book'
    list_all_books
    gets.chomp.strip.to_i
  end

  def select_person
    puts 'Select number of your register'
    list_all_people
    gets.chomp.strip.to_i
  end

  def enter_date
    puts 'Enter date'
    gets.chomp.strip
  end

  def create_and_register_rental(book, person, date)
    book = @books[book]
    person = @people[person]

    @rentals << Rental.new(date, book, person)
    puts 'Loan registered.'
  end

  def create_rental
    book = select_book
    person = select_person
    date = enter_date

    create_and_register_rental(book, person, date)
  end

  def all_rentals
    puts 'Loans active'

    puts 'Select your user by ID'
    list_all_people
    id = gets.chomp.strip.to_i

    @rentals.each_with_index do |rental, _idx|
      puts "Date: #{rental.date}, Book #{rental.book.title} by #{rental.book.author}" if rental.person.id == id
    end
  end
end
