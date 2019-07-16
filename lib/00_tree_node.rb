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

    def parent=(parents_value)
        
        @parent = parents_value
        
       if parents_value
        @parent.children.push(self) unless @parent.children.include?(self) 
       end 
    end 

end