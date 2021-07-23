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