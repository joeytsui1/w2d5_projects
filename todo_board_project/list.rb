require_relative "item"


class Label

    attr_accessor :label
    def initialize (label)
        @label = label
        @items = []
    end

    def add_item(title, deadline, description)
        @items << Item.new(title,deadline,description)
    end

    def size
        @items.length
    end

    def valid_index?(idx)
        if @items[idx] != nil
            return true
        end
        return false
    end

    def swap(idx1, idx2)
        if valid_index?(idx1) && valid_index?(idx2)
            @items[1dx1], @items[idx2] = @items[idx2], @items[idx1]
            return true
        end
        return false
    end

    def [](idx)
        return nil if !valid_index?(idx)

        return @list[idx]
    end

    def priority
        @list[0]
    end
end