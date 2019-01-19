require_relative 'module_as_namespace'
module Summable
  def sum
    inject(&:+)
  end
end

class VowelFinder
  include Enumerable
  include Summable
  attr_reader :string

  def intialize(string)
    @string = string
  end

  def each
    @string.scan /[aeiou]/ do |vowel|
      yield vowel
    end
  end
end

vowel_finder = Summable::VowelFinder.new('The quick brown fox jumped.')
puts vowel_finder.inject(&:+)
puts vowel_finder.sum
