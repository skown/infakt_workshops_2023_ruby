class CountElements
    def initialize(array)
        @array = array
    end

    def count_elements(array)
        @array.each_with_object(Hash.new(0)) { |element, hash| hash[element] += 1 }
    end

    def perform
        count_elements(@array)
    end
end
