
require_relative './report'

class IncidentReport < Report
  attr_reader :description, :reporter
  attr_accessor :assigned_employee

  def initialize(args = {})
    super
    @reporter = args.fetch(:reporter) { "anonymous" }
  end

end

