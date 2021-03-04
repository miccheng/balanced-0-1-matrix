require 'spec_helper'
require_relative '../balanced_matrix'

describe BalancedMatrix do
  it 'builds a matrix' do
    expect(subject).to be_a(BalancedMatrix)
  end
end