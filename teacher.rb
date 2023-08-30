require_relative 'person'

# Teacher class
class Teacher
  def initialize(age, specialization, name: 'Unknown', parent_permision: true)
    super(age, name, parent_permision)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
