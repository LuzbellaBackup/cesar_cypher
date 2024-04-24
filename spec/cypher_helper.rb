# frozen_string_literal: true

require './cypher'

# wrap the number
describe Cypher do
  describe '#wrapper' do
    it "addition number by 'n'" do
      wrap = Cypher.new
      expect(wrap.wrapper(65, 91, 65, 1).eql?(66))
    end
    it "substraction number by 'n'" do
      wrap = Cypher.new
      expect(wrap.wrapper(66, 91, 65, 1).eql?(65))
    end
    it 'positive overflow of range' do
      wrap = Cypher.new
      expect(wrap.wrapper(65, 91, 91, 1).eql?(65))
    end
    it 'negative overflow of range' do
      wrap = Cypher.new
      expect(wrap.wrapper(65, 91, 65, -1).eql?(91))
    end
  end
end
