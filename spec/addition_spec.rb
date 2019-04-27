require 'spec_helper.rb'
require_relative '../lib/calculator.rb'

describe 'calculator spec' do
    context 'floating number test' do
        it 'adding two floting numbers' do
            c1 = Calculator.new(1.5,2.5)
            expect(c1.add).to eq(4.0)
        end
    end
    context 'floating and integer number test' do
        it 'adding floting number with integer' do
            c1 = Calculator.new(1.5,2)
            expect(c1.add).to eq(3.5)
        end
    end
    context 'integer and integer number test' do
        it 'adding two integer numbers' do
            c1 = Calculator.new(1,2)
            expect(c1.add).to eq(3.2)
        end
    end
end