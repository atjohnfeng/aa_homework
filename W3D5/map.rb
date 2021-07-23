class Map

    def initialize
        @map = []
    end

    def set(key, value)
        map.each_with_index do |defin|
            if defin[0] == key
                defin[1] == value
                return true
            end
        end
        map << [key, value]
        self
    end

    def get(key)
        map.each_with_index do |defin,i|
            if defin[0] == key
                return map[i][1]
            end
        end
    end

    def delete(key)
        map.each_with_index do |defin,i|
            if defin[0] == key
                map.delete_at(i)
            end
        end
    end

    def show
        map.dup
    end

    def inspect
        "#Map:#{self.object_id}"
    end

    private

    attr_reader :map

end