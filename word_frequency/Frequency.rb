class Frequency
  def self.frequency(text)
    split(text).each_with_object(Hash.new(0)) { |word, h| h[word] += 1; h }
  end

  private

  def self.split(string)
    words = string.scan(/[\w']+/)
  end
end
