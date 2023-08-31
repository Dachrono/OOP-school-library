require_relative 'decorator'
# capitalize class
class Capitalize < Decorator
  def correct_name
    @nameable.correct_name.capitalize
  end
end
