require_relative 'entity.rb'

class Air < Entity
  def initialize (x, y)
    super(x, y, 0, 0, false, true)
  end
end