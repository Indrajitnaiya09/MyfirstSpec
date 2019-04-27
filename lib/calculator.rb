require 'pry'
class Calculator
    def initialize(num1, num2)
        @num1 = num1
        @num2 = num2
    end
    def add
        if (@num1.class != String && @num2.class != String)
            return(@num1 + @num2)
        else
            return false
        end
    end
    def substract
        if (@num1.class != String && @num2.class != String)
            return(@num1 - @num2)
        else
            return false
        end
    end
end