require 'pry'
class Calculator
    def initialize(num1, num2)
        if (num1.class != String && num2.class != String)
            @num1 = num1
            @num2 = num2
            @flag = true
        else
            @flag = false
        end
    end
    def add
        (@flag == true) ? (@num1 + @num2) : false
    end
    def substract
        @flag == true ? (@num1 - @num2) : false
    end
    def multiply
        (@flag == true) ? (@num1 * @num2) : false
    end
    def divide
        ( @num2 != 0) && (@flag == true) ? (@num1 / @num2) : false
    end
end