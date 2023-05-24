class Student
    attr_reader :name, :age, :scores
    def initialize(details)
        @name = details[:name]
        @age = details[:age]
        @scores = []
    end

    def log_score(score)
        @scores << score
    end

    def grade
        return 0 if @scores.empty?

        total_scores = @scores.sum
        average = total_scores.to_f / @scores.length
        average.round(1)
    end
 
end
