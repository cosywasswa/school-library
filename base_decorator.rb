require './nameable'

class BaseDecorator < Nameable
  attr_accessor :nameable

  # @param [Nameable] nameable
  def initialize(nameable)
    super()
    @nameable = nameable
  end

  def correct_name
    @nameable.correct_name
  end
end
