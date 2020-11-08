require_relative '../spec/tic-tac-toe_spec.rb'

spec/tic-tac-toe_spec.rb

# Logic defines players attributes
class Players
  attr_accessor :name
  def initialize(name)
    @name = name
  end
end
