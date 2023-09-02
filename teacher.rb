require_relative 'person'

# Teacher class
class Teacher < Person
  def initialize(specialization, type, age, name = 'Unknown', parent_permision: true)
    super(type, age, name, parent_permision: parent_permision)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
