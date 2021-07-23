class Stack

    def initialize
        @stack = Array.new
    end

    def push(ele)
        stack.push(ele)
        self
    end

    def pop
        stack.pop
    end

    def peek
        stack[-1]
    end

    def inspect
        "#Stack:#{self.object_id}"
    end

    private
    
    attr_reader :stack

end