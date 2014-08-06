module PrimeRubyDemo
  def self.divisors(nr)
    i = 2
    result = []
    while nr > i
      result << i if nr % i == 0
      i += 1
    end

    return result
  end
end
