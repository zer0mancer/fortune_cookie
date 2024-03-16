require 'minitest/autorun'
#require './app'
require './fortune'

class TestCookie < Minitest::Test
  def setup
    test = Fortune('omen','fortune').new
  end
  def test_cookie
    assert_equal "This cookie will bring you #{omen} luck. #{fortune}", test.cookie, "Test Cookie Failed"
  end
end

#TestCookie.test_cookie
