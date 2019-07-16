class PolyTreeNode

    def initialize(value)
        @value = value
        @parent = nil 
        @children = []
    end 

    def parent
        @parent
    end 

    def children
       @children
    end 

    def value 
        @value
    end 

    def parent=(new_rents_val)
        if (@parent != new_rents_val) && (@parent != nil)
            @parent.children.delete(self)
        end

        @parent = new_rents_val
        
       if new_rents_val
        @parent.children.push(self) unless @parent.children.include?(self) 
       end 
    end 

end