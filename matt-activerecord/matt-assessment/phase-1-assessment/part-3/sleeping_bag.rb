require_relative './supply'

class SleepingBag < Supply
  attr_reader :style, :size, :shell

  def initialize(args = {})
    @style = args.fetch(:style) { "rectangular" }
    @size = args.fetch(:size) { "adult" }
    @shell = args.fetch(:shell) { "nylon" }
  end

end
