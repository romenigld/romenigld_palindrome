require "romenigld_palindrome/version"

module RomenigldPalindrome

  # Returns true for a palindrome, false otherwise.
  def palindrome?
    if processed_content.empty?
      false
    else
      processed_content == processed_content.reverse
    end
  end

  private

    # Returns content for palindrome testing.
    def processed_content
      self.to_s.scan(/[a-z\d+]/i).join.downcase # or can use the Regex /[a-z0-9]/i
    end
end

class String
  include RomenigldPalindrome
end

class Integer
  include RomenigldPalindrome
end
