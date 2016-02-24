require_relative './sock'
require_relative './sock_matcher'

class SockDrawer
  attr_reader :socks, :matcher

  def initialize(args = {})
    @socks = args.fetch(:socks) { Array.new }
    @matcher = args.fetch(:matcher)
  end

  def supply_match_for(unmatched_sock)
    matched_sock = @socks.find {|sock| @matcher.match?(sock, unmatched_sock)}
    @socks.delete(matched_sock)
  end

  def supply_random_pair_of_socks
    pair = []
    @socks.each do |sock|
      match = supply_match_for(sock)
      if match.is_a? Sock
        pair.push(sock, match)
      end
    end
    pair.each do |sock|
      @socks.delete(sock)
    end
    return pair
  end

end

