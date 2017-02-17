class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
    if side1 <= 0 || side2 <= 0 || side3 <= 0
      begin
        raise TriangleError
      rescue Triangle => error
            puts error.message
          end
    elsif ((side1 + side2) <= side3) || ((side1 + side3) <= side2) || ((side2 + side3) <= side1)
        begin
          raise TriangleError
        rescue Triangle => error
              puts error.message
            end
    elsif side1 == side2 && side1 == side3 && side2 == side3
      "equilateral".to_sym
    elsif (side1 == side2) ||(side1 == side3) || (side2 == side3)
      "isosceles".to_sym
    else
      "scalene".to_sym
  end
end


end

class TriangleError < StandardError
  def message
    "not a triangle bro"
  end
end
