class Item
    def self.valid_date?(date_string)
        date_arr = date_string.split("-")
        if date_arr[0].length == 4 && (1..12).include?(date_arr[1].to_i) && (1..31).include?(date_arr[2].to_i)
            return true
        end
        return false
    end
    attr_accessor :title, :deadline, :description
    def initialize (title, deadline, description)
        @title = title
        @deadline = deadline
        if !Item::valid_date?(deadline)
            raise 
        end
        @description = description
    end
    
    
end
