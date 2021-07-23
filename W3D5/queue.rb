class Queue

    def initialize
        @queue = Array.new
    end

    def enqueue(ele)
        @queue.unshift(ele)
    end

    def dequeue
        @queue.pop
    end

    def peek
        @queue[-1]
    end

end

# class Queue

#     def initialize
#         @queue = Array.new
#     end

#     def enqueue(ele)
#         @queue.push(ele)
#     end

#     def dequeue
#         @queue.shift
#     end

#     def peek
#         @queue[0]
#     end

# end