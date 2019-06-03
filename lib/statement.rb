require_relative 'account'


class Statement

attr_reader :display
  # responsible for displaying the statement
  def initialize
    @display = []
  end
end
