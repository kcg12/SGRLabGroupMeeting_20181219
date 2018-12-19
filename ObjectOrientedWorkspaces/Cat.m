classdef Cat < handle
    
    properties(SetAccess=private) % other languages may call these fields
        name;
        mood;
        hungry;
        energy;
    end
    
    methods(Static, Access=private)
        function meow()
            fprintf('Meow!\n')
        end
    end
    
    methods(Access=public)
        function obj = Cat(name, mood, hungry, energy)
            obj.name = name;
            obj.mood = mood;
            obj.hungry = hungry;
            obj.energy = energy;
        end
        
        function obj = Feed(obj);
            obj.hungry = obj.hungry - 1;
            obj.mood = obj.mood + 1;
            obj.meow;
        end
    end
end
        
        