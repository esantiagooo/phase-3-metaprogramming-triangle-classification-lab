class Triangle
  # write code here
  attr_accessor :a, :b, :c

  def initialize(a,b,c)
    @a = a
    @b = b
    @c = c
  end 

  def kind
    if a == b && b == c
      :equilateral
    elsif
      a == b || b == c || a == c
      :isosceles
    else
      :scalene
    end
  end
  def sides_greater_than_zero?
    [a, b, c].all?(&:positive?)
  end

  def validate_triangle
    raise TriangleError unless sides_greater_than_zero?
  end

  class TriangleError < StandardError
  end
end
