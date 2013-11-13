class Glass
  attr_accessor :liquid

  def initialize(liquid)
    @liquid = liquid
  end

  def self.fill(liquid=nil)
    raise "Don't know what to fill with!" if liquid.nil?
    new(liquid)
  end
end
