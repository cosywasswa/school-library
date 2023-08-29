require './nameable'

# class person and its methods
class Person < Nameable
  def initialize(age, name = 'Unknown', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  attr_accessor :name, :age, :rentals
  attr_reader :id

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    of_age? || parent_permission
  end

  public

  def correct_name
    @name
  end

  def add_rental(rental)
    @rentals << rental
    rental.person = self
  end
end
