class Triangles
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:is_triangle?) do
    if ((@side_a + @side_b >= @side_c) && (@side_b + @side_c >= @side_a) && (@side_c + @side_a >= @side_b))
      return true
    else
      return false
    end
  end

  define_method(:triangle_type) do
    #checks to see if input is a triangle
    if (self.is_triangle? == true)
      #checks to see if checked triangle is equilateral
      if (@side_a == @side_b) && (@side_b == @side_c)
        "Equilateral"
      #Elseif, checks to see if isosceles
      elsif ((@side_a == @side_b) || (@side_a == @side_c) || (@side_b == @side_c))
        puts "Isosceles"
        return "Isosceles"
      #Else, the triangle is scalene
      else
        puts "Scalene"
        return "Scalene"
      end
    else
      return "NOT A TRIANGLE"
    end
  end

end
