class Triangle

  attr_reader :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if check_valid
      if @side1 == @side2 && @side2 == @side3
        :equilateral
      elsif @side1 == @side2 || @side2 == @side3 || @side1 == @side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  def check_valid
    if @side1 > 0 && @side2 > 0 && @side3 > 0
      if @side1 + @side2 > @side3 && @side1 + @side3 > @side2 && @side2 + @side3 > @side1
        return true
      end
    end
    false
  end


  class TriangleError < StandardError
  end

end
