class Triangle
  # write code here
  attr_accessor :side3, :side2, :side1

  class TriangleError < StandardError
    def message 
    "please google what a triangle is..."
    end 
  end 


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end 

  def validate 
    triangle = [(side1 + side2 > side3), (side1 + side3 > side2), (side2 + side3 > side1)]
    [side1, side2, side3].each do |side|
      triangle.push(false) if side <= 0 
    raise TriangleError if triangle.include?(false)
    end
  end

  def kind
  
      validate 
       

      if @side1 == @side2 && @side2 == @side3 
      :equilateral 
      
      elsif @side1 != @side2 && @side1 != @side3 && @side2 != @side3 
      :scalene

      else 
        :isosceles 
      end
    end  
     
  

end  

  

