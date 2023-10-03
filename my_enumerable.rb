module MyEnumerable
    def all?
        each { |element| return false 
        unless yield(element) }
            true
        end

        def any?
            each { |element| return true if yeild(element) }
            false
        end

    def filter 
        result = []
        each { |element| result << element if yield(element) }
        result
    end
end