class Triangles
  define_method(:initialize) do |side_a, side_b, side_c|
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  define_method(:is_triangle?) do
    if (@side_a + @side_b) >= @side_c
      true
    else
      false
    end
  end

  define_method(:triangle_type) do
    #checks to see if input is a triangle

    #checks to see if checked triangle is equilateral
    if (@side_a == @side_b) && (@side_b == @side_c)
      "Equilateral"
    end
    #Elseif, checks to see if isosceles

    #Else, the triangle is scalene
  end

end
