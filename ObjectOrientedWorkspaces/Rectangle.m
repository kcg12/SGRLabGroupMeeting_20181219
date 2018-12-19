classdef Rectangle < Shape
    
    properties(SetAccess=private)
        length;
        width;
    end
    
    methods
        function obj = Rectangle(length, width)
            obj.length = length;
            obj.width = width;
        end
        
        function perimeter = CalculatePerimeter(obj)
            perimeter = 2*obj.length + 2*obj.width;
        end
        
        function area = CalculateArea(obj)
            area = obj.length*obj.width;
        end
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %       Put your code below      %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
    end
end
