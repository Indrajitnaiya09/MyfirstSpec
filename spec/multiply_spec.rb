require 'spec_helper.rb'
require_relative '../lib/calculator.rb'

describe 'calculator spec' do
    context 'floating number test' do
        it 'multiply two floting numbers' do
            c1 = Calculator.new(1.5,2.5)
            expect(c1.multiply).to eq(3.75)
        end
    end
    context 'floating and integer number test' do
        it 'multiply floting number with integer' do
            c1 = Calculator.new(1.5,2)
            expect(c1.multiply).to eq(3.0)
        end
    end
    context 'integer and integer number test' do
        it 'multiply two integer numbers' do
            c1 = Calculator.new(1,2)
            expect(c1.multiply).to eq(2)
        end
    end
    context 'integer and string test' do
        it 'multiply integer with string' do
            c1 = Calculator.new(1, "Hello")
            expect(c1.multiply).to eq(false)
        end
    end
    context 'string and string test' do
        it 'multiply string with string' do
            c1 = Calculator.new("Oye", "Hello")
            expect(c1.multiply).to eq(false)
        end
    end
end