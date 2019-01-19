class Frequency
  def self.frequency(raw_text)
    frequency = Hash.new(0)
    split(raw_text).each { |word| frequency[word] += 1 }
    frequency
  end

  private

  def self.split(string)
    words = string.scan(/[\w']+/)
  end
end
