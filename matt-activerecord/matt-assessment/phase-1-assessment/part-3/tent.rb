require_relative './supply'

class Tent < Supply
  attr_reader :capacity

  def initialize(args = {})
    @capacity = args.fetch(:capacity) { 3 }
  end

end
