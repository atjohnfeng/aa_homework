class Queue

    def initialize
        @queue = Array.new
    end

    def enqueue(ele)
        queue.unshift(ele)
        self
    end

    def dequeue
        queue.pop
    end

    def peek
        queue[-1]
    end

    def inspect
        "#Queue:#{self.object_id}"
    end

    private
    
    attr_reader :queue

end

# class Queue

#     def initialize
#         @queue = Array.new
#     end

#     def enqueue(ele)
#         queue.push(ele)
#         self
#     end

#     def dequeue
#         queue.shift
#     end

#     def peek
#         queue[0]
#     end

#     def inspect
#         "#Queue:#{self.object_id}"
#     end

#     private
    
#     attr_reader :queue

# end