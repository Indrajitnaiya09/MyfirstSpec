require 'spec_helper.rb'
require_relative '../lib/calculator.rb'

describe 'calculator spec' do
    context 'floating number test' do
        it 'divide two floting numbers' do
            c1 = Calculator.new(1.5,2.5)
            expect(c1.divide).to eq(0.6)
        end
    end
    context 'floating and integer number test' do
        it 'divide floting number with integer' do
            c1 = Calculator.new(1.5,2)
            expect(c1.divide).to eq(0.75)
        end
    end
    context 'integer and integer number test' do
        it 'divide two integer numbers' do
            c1 = Calculator.new(1,2)
            expect(c1.divide).to eq(0)
        end
    end
    context 'float and integer number test' do
        it 'divide float by integer numbers' do
            c1 = Calculator.new(1.0,2)
            expect(c1.divide).to eq(0.5)
        end
    end
    context 'integer and string test' do
        it 'divide integer with string' do
            c1 = Calculator.new(1, "Hello")
            expect(c1.divide).to eq(false)
        end
    end
    context 'string and string test' do
        it 'divide string with string' do
            c1 = Calculator.new("Oye", "Hello")
            expect(c1.divide).to eq(false)
        end
    end
    context 'divide by zero test' do
        it 'divide integer with 0' do
            c1 = Calculator.new(5, 0)
            expect(c1.divide).to eq(false)
        end
    end
end