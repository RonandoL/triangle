require('rspec')
require('triangles')

describe('Triangles') do
  describe('#is_triangle?') do

    it('is this a triangle') do
      test_triangle = Triangles.new(3, 3, 12)
      expect(test_triangle.is_triangle?()).to(eq(false))
    end

    it('is this a triangle') do
      test_triangle = Triangles.new(3, 3, 5)
      expect(test_triangle.is_triangle?()).to(eq(true))
    end

  end

  describe('#triangle_type') do

    it('is the triangle equilateral') do
      test_triangle = Triangles.new(3, 3, 3)
      expect(test_triangle.triangle_type()).to(eq("Equilateral"))
    end

    it('Is the triangle Isosceles') do
      test_triangle = Triangles.new(3,3,5)
      expect(test_triangle.triangle_type()).to(eq("Isosceles"))
    end

    it('Is the triangle scalene') do
      test_triangle = Triangles.new(3,4,5)
      expect(test_triangle.triangle_type()).to(eq("Scalene"))
    end

    #Break test
    it('Is the triangle not a triangle?') do
      test_triangle = Triangles.new(3,4,25)
      expect(test_triangle.triangle_type()).to(eq("NOT A TRIANGLE"))
    end

  end

end
