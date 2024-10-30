class Outfits
  attr_accessor :garment, :color

  def initialize(garment,color)
    @color = color
    @garment = garment
   
  end

  def to_s
   "#{@color}, #{@garment}"
  end

end
