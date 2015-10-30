class Cell
  attr_accessor :alive

  def initialize
    @alive = true
  end

  def alive?
    @alive
  end

  def to_s
    if alive?
      "x".strip
    else
      " "
    end
  end
end


class World
  attr_accessor :cells

  def initialize
    @cells = []
    25.times do
      @cells << Cell.new
    end
    # change cell status for starting board
  end

end


world = World.new

loop do
  world.cells.each_with_index do |cell, index|
    print "\n" if index % 5 == 0
    print cell
    print " "
  end

  sleep(1)
  system "clear"
end
