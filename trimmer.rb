require_relative 'decorator'
# trimmer class
class Trimmer < Decorator
  def correct_name
    original_name = @nameable.correct_name
    original_name.length > 10 ? original_name[0, 10] : original_name
  end
end
