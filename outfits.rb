class Outfits
  attr_accessor :color, :garment

  def initialize(color, garment)
    @color = color
    @garment = garment
   
  end

  def to_s
   "#{@color} #{@garment}"
  end

end
