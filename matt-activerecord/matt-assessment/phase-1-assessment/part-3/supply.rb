require_relative './reservable'
require_relative './damagable'

class Supply

  attr_reader :capacity, :style, :size, :shell, :material

  include Reservable
  include Damagable

  def initialize(args={})
    @capacity = args.fetch(:capacity) {0}
    @style = args.fetch(:style) {'rectangular'}
    @size = args.fetch(:size) {0}
    @shell = args.fetch(:shell) {'nylon'}
    @material = args.fetch(:material) {'tin'}
  end

end
