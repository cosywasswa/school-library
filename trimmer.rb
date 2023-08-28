require './base_decorator'

class TrimmerDecorator < BaseDecorator
  def correct_name
    initial_name = @nameable.correct_name
    initial_name.length > 10 ? initial_name[0..9] : initial_name
  end
end
