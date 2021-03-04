class BalancedMatrix
  attr_reader :grid

  def initialize(size=0, initial=[])
    @size = size
    @data = initial
    @grid = build_grid
  end

  private

  def build_grid
    @size.times.map do |row|
      @size.times.map { |col| @data[(row * @size) + col] }
    end
  end
end