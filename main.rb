require_relative 'app'
# menu

def menu
  puts
  puts 'Select a option: '
  puts '1 - List all books'
  puts '2 - List all people'
  puts '3 - Create a person'
  puts '4 - Create a book'
  puts '5 - Create a rental'
  puts '6 - List all rentals for a given person id'
  puts '7 - Exit'
end

def switch(call, option)
  case option
  when 1 then call.list_all_books
  when 2 then call.list_all_people
  when 3 then call.create_person
  when 4 then call.create_book
  when 5 then call.create_rental
  when 6 then call.all_rentals
  else
    puts 'Thank you for your visit'
  end
end

def init
  call = App.new
  puts 'Welcome'

  loop do
    menu
    option = gets.chomp.strip.to_i
    switch(call, option)
    break if option < 1 || option > 6
  end
end

init
