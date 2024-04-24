# frozen_string_literal: true

require './cypher'

# wrap the number
describe Cypher do
  describe '#wrapper' do
    it "number to letter addition number by 'n'" do
      cypher = Cypher.new
      expect(cypher.wrapper(65, 91, 65, 1)).to eql('B')
    end
    it "number to letter substraction number by 'n'" do
      cypher = Cypher.new
      expect(cypher.wrapper(65, 91, 66, -1)).to eql('A')
    end
    it 'number to letter positive overflow of range' do
      cypher = Cypher.new
      expect(cypher.wrapper(65, 91, 90, 1)).to eql('A')
    end
    it 'number to letter negative overflow of range' do
      cypher = Cypher.new
      expect(cypher.wrapper(65, 91, 65, -1)).to eql('Z')
    end
  end
  describe '#shifter' do
    it "transition from 'x' letter (uppercase) by margin of 'n'" do
      cypher = Cypher.new
      expect(cypher.shifter('A', 1)).to eql('B')
    end
    it "transition from 'x' letter (uppercase) by margin of 'n' (+5)" do
      cypher = Cypher.new
      expect(cypher.shifter('A', 5)).to eql('F')
    end
    it "transition from 'x' letter (lowercase) by margin of 'n'" do
      cypher = Cypher.new
      expect(cypher.shifter('a', 1)).to eql('b')
    end
  end
  describe '#encoder' do
    it "#transcript text by 'n' integers" do
      cypher = Cypher.new
      expect(cypher.encoder('What a string!', 5)).to eql('Bmfy f xywnsl!')
    end
  end
end
