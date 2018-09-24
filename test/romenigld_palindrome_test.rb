require "test_helper"

class RomenigldPalindromeTest < Minitest::Test
  def test_non_palindrome
    assert !"apple".palindrome?
    refute "apple".palindrome?
  end

  def test_literal_palindrome
    assert "racecar".palindrome?
  end

  def test_mixed_case_palindrome
    assert "RaceCar".palindrome?
  end

  def test_palindrome_with_punctuation
    assert "Madam, I'm Adam.".palindrome?
  end

  def test_letters
  # Asserting strict equality directly. This is confusing and less useful.
  # So use the native assertions always.
  # assert "Madam, I'm Adam.".letters == "MadamImAdam"

  # Using a native assertion.
  # assert_equal <expected>, <actual>
    assert_equal "MadamImAdam", "Madam, I'm Adam.".letters
  end
end
