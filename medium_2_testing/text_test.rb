require 'minitest/autorun'
require_relative 'text.rb'

class TextTest < Minitest::Test
  def setup
    @file = File.open('sample_text.txt', 'r')
    @text_instance = Text.new(@file.read)
  end

  def test_swap
    new_text = File.read('sample_text_a_to_b.txt')
    assert_equal(new_text, @text_instance.swap('a', 'b'))
  end

  def test_word_count
    assert_equal(72, @text_instance.word_count)
  end

  def teardown
    @file.close
  end
end