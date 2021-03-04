class BalancedMatrix
  def initialize(size=0, initial=[])
    @size = size
    @data = initial
  end

  def make_solution!
    if @size == 1
      @data = [1]
      return
    end

    if @size == 2
      @data = [1, 0, 0, 1]
      return
    end
  end

  def grid
    @size.times.map do |row|
      @size.times.map do |col|
        idx = (row * @size) + col
        # puts "Looking at index #{idx}"
        @data[idx]
      end
    end
  end
end