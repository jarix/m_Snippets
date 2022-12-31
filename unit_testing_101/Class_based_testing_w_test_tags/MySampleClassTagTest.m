classdef (TestTags = {'Feature1'}) ...
        MySampleClassTagTest < matlab.unittest.TestCase
    %MYSAMPLECLASSTAGTEST Sample Test Case class with test tags
        
    methods (Test)
        function testA (testCase)
            disp('Executing testA');
        end
    end
    
    methods (Test, TestTags = {'FeatureB'})
        function testB (testCase)
            disp('Executing testB');
        end
    end

    methods (Test, TestTags = {'FeatureC', 'System'})
        function testC (testCase)
            disp('Executing testC');
        end
    end
    
end

