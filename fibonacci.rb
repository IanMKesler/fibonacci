class Fibonacci
    attr_accessor :number, :answer

    def initialize(number)
        @number = number
        @answer = []
    end

    def generate(rec = false)
        case rec
        when false
            @number.times { |n|
                @answer << fibs(n)
            }
        when true
            fibs_rec(@number)
        end
    end

    def show_answer
        puts
        puts @answer.join(", ")
    end

    private

    def fibs(n)
        n < 2 ? n : @answer[n-1] + @answer[n-2]
    end

    def fibs_rec(n)
        [0,1].include?(n) ? @answer[n] ||= n : @answer[n] ||= fibs_rec(n-1) + fibs_rec(n-2)
    end
end

sequence = Fibonacci.new(gets.chomp.to_i)
sequence.generate(true)
sequence.show_answer
