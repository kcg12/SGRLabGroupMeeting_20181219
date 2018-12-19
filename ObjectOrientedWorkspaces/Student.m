classdef Student < Person
    
    properties(SetAccess=private)
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %       Put your code below      %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        classes
    end
   
    properties(GetAccess=private)
        grades
    end
    
    methods
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        %       Put your code below      %
        %%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
        function obj = Student(name, email, classes, grades)
            obj = obj@Person(name, email);
            obj.classes = classes;
            obj.grades = grades;
        end
        
        function grades = getGrades(obj)
            grades = obj.grades;
        end
    end
end
        