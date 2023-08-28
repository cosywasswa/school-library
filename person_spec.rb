# frozen_string_literal: true

# class person and its methods
class Person
  def initialize(age, name = 'Unknown', _parent_permission: true)
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  attr_accessor :name, :age
  attr_reader :id

  private

  def of_age?
    true
  end

  def can_use_services?
    if person.of_age || parent_permission
      true
    else
      false
    end
  end
end
