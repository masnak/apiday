require 'test_helper'

class ApidayTest < Minitest::Test
  def setup
   @main = Apiday::Main.new
  end

=begin
  def test_input
    #refute_nil ::Apiday::VERSION
  end
=end

  def test_wikipedia_year
    refute_nil @main.wikipedia_year(2000)
    assert_includes(@main.wikipedia_year(2000),"閏年")
    assert_raises NoMethodError do @main.wikipedia_year(2499) end
   end
end
