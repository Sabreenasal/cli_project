require 'minitest/autorun'
require './outfits'

class TestOutfits < MiniTest :: Test
  def test_outfits
   outfits = Outfits.new
   outfits.to_s = "#{@color} #{@garment}"
   assert_equal "#{@color} #{@garment}", outfits.to_s, "to_s method not found"
  end
end
