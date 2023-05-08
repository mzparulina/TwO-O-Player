class Players
  attr_accessor :lives

  def initialize(n)
    @lives = 3
  end

  def deduct_life
    self.lives -= 1
  end
end