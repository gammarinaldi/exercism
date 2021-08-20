class Element
    attr_accessor :datum, :next
    def initialize value
      self.datum = value
      #self
    end
end

class SimpleLinkedList
    def initialize array = []
      @elements = []
      array.each {|i| push Element.new(i)}
    end

    def to_a
      @elements.map(&:datum)
    end

    def push element
      @elements.unshift element
      self
    end

    def pop
      @elements.shift
    end

    def reverse!
      @elements.reverse!
      self
    end
end