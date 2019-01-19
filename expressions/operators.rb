puts a.*(b).+(c)

a = [1, 2, 3]
a << 4

class ScoreKeeper
  def initialize
    @total_score = @scores = 0
  end

  def <<(score)
    @total_score += score
    @scores += 1
    self
  end

  def average
    raise 'No scores' if @scores.zero?

    Float(@total_score) / @scores
  end

  def to_s
    puts "The average score is #{average}"
  end
end

sk = ScoreKeeper.new
sk << 10 << 30 << 80 << 99 << 45
sk.to_s
