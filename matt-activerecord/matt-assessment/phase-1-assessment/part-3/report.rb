require_relative './assignable'

class Report
  attr_reader :description
  attr_accessor :assigned_employee

  include Assignable

  def initialize(args = {})
    @description = args.fetch(:description) { "Unknown damage" }
    @resolved = false
  end

  def resolved?
    !!@resolved
  end

  def close
    @resolved = true
  end

end
