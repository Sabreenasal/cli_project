require 'minitest/autorun'
require './outfits'

class TestOutfits < Minitest::Test
  def test_outfits
   outfit = Outfits.new("pink", "pants")
   assert_equal "pink pants", outfit.to_s, "to_s method not found"
  end
end
