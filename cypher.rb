# frozen_string_literal: true

require 'pry-byebug'

# Cypher
class Cypher
  # wrap the number around the ASCCII range
  def wrapper(range1, range2, num1, shift)
    num = num1 + shift
    range = range2 - range1
    total = range1 + ((num - range1) % range)
    total.chr
  end

  # shift letter by +- number
  def shifter(letter, number)
    num1 = letter.ord
    if (65..90).cover?(num1)
      wrapper(65, 91, num1, number)
    elsif (97..122).cover?(num1)
      wrapper(97, 123, num1, number)
    else
      letter
    end
  end

  # Iterate over the string per each letter
  def encoder(string, num)
    string.split('').map do |item|
      shifter(item, num)
    end.join('')
  end
end

Cypher.new.encoder('What a string!', 5)
