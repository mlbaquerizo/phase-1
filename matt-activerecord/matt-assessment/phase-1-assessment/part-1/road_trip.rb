require_relative './segment'

class RoadTrip

  attr_accessor :name
  attr_reader :segments

  def initialize(args={})
    @name = args.fetch(:name)
    @segments = args.fetch(:segments,[])
  end

  def add_segment(new_segment)
    @segments << new_segment
  end

  def total_miles
    segment_miles = @segments.map { |segment| segment.miles }
    segment_miles.inject(:+)
  end

  def average_miles_per_segment
    total_miles / segments.length
  end

end
