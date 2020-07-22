class CircularObject

  def initialize(diameter, weight)
    @diameter = diameter
    @weight = weight
  end

  def get_weight
    @weight
  end

  def get_diameter
    @diameter
  end

  def eql?(circular_object)
    @diameter === circular_object.get_diameter and @weight === circular_object.get_weight;
  end
end

