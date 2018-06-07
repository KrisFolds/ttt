require "minitest/autorun"
require_relative "ttt.rb"  #You have to change this what is in quotes to the name of your rb files

class TestEncoder_decoder < Minitest::Test  #The word Addition can be replace with the name of your project

def test_assert_that_1_equals_1
	assert_equal(1,1) 

def test_assert_that_apple_returns_bqqmf
	assert_equal(("b"), ("q"), ("q"), ("m"), ("f"), encoder("apple"))

def test_assert_that_bqqmf_returns_apple
	assert_equal("apple", decoder("b", "q", "q", "m", "f"))

end
end
end
end