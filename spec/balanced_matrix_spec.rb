require 'spec_helper'
require_relative '../balanced_matrix'

describe BalancedMatrix do
  it 'builds a matrix' do
    expect(subject).to be_a(BalancedMatrix)
  end

  describe '#grid' do
    it 'shows 2D array' do
      expect(subject.grid).to eq([])
    end

    describe '2x2 grid' do
      subject{ BalancedMatrix.new(2) }

      it 'shows 2D array' do
        expect(subject.grid).to eq([[nil, nil], [nil, nil]])
      end
    end

    describe 'populated grid' do
      let(:size) { 2 }
      let(:initial) { [1,0,1,0] }

      subject{ BalancedMatrix.new(size, initial) }

      it 'shows 2D array' do
        expect(subject.grid).to eq([[1, 0], [1, 0]])
      end
    end
  end
end