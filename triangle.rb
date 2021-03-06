# Triangle Project Code.

# Triangle analyzes the lengths of the sides of a triangle
# (represented by a, b and c) and returns the type of triangle.
#
# It returns:
#   :equilateral  if all sides are equal
#   :isosceles    if exactly 2 sides are equal
#   :scalene      if no sides are equal
#
# The tests for this method can be found in
#   about_triangle_project.rb
# and
#   about_triangle_project_2.rb
#
def triangle(a, b, c)
  # WRITE THIS CODE

  [a, b, c].each do |i|
    raise TriangleError if i < 1
  end

  # any two sides should add up to more than the third side
  raise TriangleError if a + b <= c or b + c <= a or a + c <= b

  if a == b and b == c and a == c then
    :equilateral
  elsif a == b or b == c or a == c then
    :isosceles
  else
    :scalene
  end

end

# Error class used in part 2.  No need to change this code.
class TriangleError < StandardError
end
