
require_relative './assignable'

class Invoice
  attr_reader :amount, :due_date, :invoicee
  attr_accessor :assigned_employee

  include Assignable

  def initialize(args = {})
    @amount = args.fetch(:amount)
    @due_date = args.fetch(:due_date) { Time.now.strftime("%m/%d/%Y") }
    @invoicee = args.fetch(:invoicee)
  end

end
