require 'minitest/autorun'
#require './app'
require './fortune'
class TestingApp < Minitest::Test
  def test_intro
    test = Fortune_Cookies.new
    assert_equal "Welcome to the year 2052. The world is now sad and dark all the time. People barely see the sun. They are generally unhappy here. They work hard day in and day out hoping for some luck to come their way. This is where you come along.", test.intro, "Test failed. Check again."
  end
end
