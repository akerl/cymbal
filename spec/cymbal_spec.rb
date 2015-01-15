require 'spec_helper'

describe Cymbal do
  describe '#symbolize' do
    let(:hash) do
      { 'foo' => 1, 'bar' => 2 }
    end
    let(:result) do
      { foo: 1, bar: 2 }
    end

    it 'symbolizes hashes' do
      expect(Cymbal.symbolize(hash)).to eql result
    end

    it 'symbolizes hashes in arrays' do
      array = Cymbal.symbolize((1..5).collect { hash.dup })
      correct = (1..5).collect { Cymbal.symbolize(hash.dup) }
      expect(array).to eql correct
      expect(array.first.keys).to include(:foo, :bar)
    end

    it 'raises if there is a key conflict' do
      bad_hash = { 'foo' => 2, :foo => 3 }
      expect { Cymbal.symbolize(bad_hash) }.to raise_error(ArgumentError)
    end

    it 'supports nested hashes' do
      nested = Cymbal.symbolize('nest' => hash)
      correct = { nest: Cymbal.symbolize(hash) }
      expect(nested).to eql correct
    end
  end
end
