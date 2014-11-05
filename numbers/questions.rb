require 'pry'

class Questions

  def initialize
    @numbers = []
    (1...100000).each do |num|
      if num % 19 == 0
        @numbers << num
      end
    end
  end

  def answer_one
    @numbers.count
  end

  def answer_two
    counter = 0
    @numbers.each do |num|
      sqrt = Math.sqrt(num).to_s
      if sqrt.end_with?("1")
        counter +=1
      end
    end
    counter
  end

  def answer_three
    counter = 0
    @numbers.each do |num|
      reflection = num.to_s.reverse.to_i
      if @numbers.include?(reflection)
        counter += 1
      end
    end
    counter
  end

  def answer_four
    count = 0
    hash = Hash[@numbers.map.with_index.to_a]
    @numbers.each do |num|
      position = hash[num] + 1
      while @numbers[position] != nil
        val = num * @numbers[position]
        if @numbers.include?(val)
          count += 1
        end
        position += 1
      end
    end
    count
  end

end
