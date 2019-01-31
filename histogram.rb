module Enumerable
  def to_histogram
    each_with_object(Hash.new(0)) { |x, h| h[x] += 1; h }
  end
end

frequency = ['pow', nil, nil, 'pow', 'pow'].to_histogram
