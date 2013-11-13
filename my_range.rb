class MyRange
  attr_accessor :min_range, :max_range
  def initialize(min_range, max_range)
    @min_range = min_range
    @max_range = max_range
  end

  def self.within_range(value)
    value >= min_range && value <= max_range
  end
end
