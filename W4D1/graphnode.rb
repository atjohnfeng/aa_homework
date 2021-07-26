class GraphNode
    attr_reader :value
    attr_accessor :neighbors

    def initialize(value)
        @value = value
        @neighbors = []
    end

    def new_neighbor(neighbor)
        @neighbors << neighbor
    end

    def self.bfs(starting_node, target)
        queue = [starting_node]
        checked = []
        until queue.empty?
            check_node = queue.shift
            break if checked.include?(check_node)
            checked << check_node
            return true if check_node.value == target
            check_node.neighbors.each { |node| queue << node }
        end
        return nil
    end

end

a = GraphNode.new('a')
b = GraphNode.new('b')
c = GraphNode.new('c')
d = GraphNode.new('d')
e = GraphNode.new('e')
f = GraphNode.new('f')
a.neighbors = [b, c, e]
c.neighbors = [b, d]
e.neighbors = [a]
f.neighbors = [e]

f.new_neighbor(a)

p GraphNode.bfs(a, "b")
p GraphNode.bfs(a, "f")