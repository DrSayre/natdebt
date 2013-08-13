require 'test/unit'
require 'natdebt'

class NatdebtTest < Test::Unit::TestCase
  def test_natdebt
    lfDebt = Natdebt.current
    assert_equal(Float, lfDebt.class)
    if lfDebt > 16000000000000
      lbLarge = true
    else
      lbLarge = false
    end
    assert(lbLarge, "If this tests fails, check to see if debt has shrunk to less than 16 Trillion.")
  end
end    
