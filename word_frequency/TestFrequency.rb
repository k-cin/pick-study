require_relative 'frequency'
require 'test/unit'

class TestFrequency < Test::Unit::TestCase
  def test_single_word
    assert_equal({ 'cat' => 1 }, Frequency.frequency('cat'))
  end

  def test_two_different_words
    assert_equal({ 'cat' => 1, "dog's" => 1 }, Frequency.frequency("cat dog's"))
  end

  def test_words_with_adjacent_repeat
    assert_equal({ 'cat' => 2, 'bat' => 1 }, Frequency.frequency('cat cat bat'))
  end

  def test_two_words_with_non_adjacent_repeat
    assert_equal({ 'cat' => 2, 'bat' => 1, 'dog' => 1 },
                 Frequency.frequency('bat cat dog cat'))
  end
end
