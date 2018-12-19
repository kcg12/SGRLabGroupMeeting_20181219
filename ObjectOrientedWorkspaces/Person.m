classdef Person
    
    properties(SetAccess=private)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %       Put your code below      %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        name;
        email;
    end
    
    methods
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %       Put your code below      %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function obj = Person(name, email)
            obj.name = name;
            obj.email = email;
        end
        
        function obj = setName(obj, newName)
            obj.name = newName;
        end
    end
end