classdef MySampleTest < matlab.unittest.TestCase
    
    methods (Test)
        function testA (testCase)
            testCase.applyFixture(FormatHexFixture);
            a = 1;
            actualStr = strtrim(evalc('disp(a)'));
            expectedStr = '3ff0000000000000';
            testCase.verifyEqual(actualStr, expectedStr);
        end
        
        function testB (testCase)
            testCase.applyFixture(FormatHexFixture);
            b = 123456789;
            actualStr = strtrim(evalc('disp(b)'));
            expectedStr = '419d6f3454000000';
            testCase.verifyEqual(actualStr, expectedStr);
        end 
    end
end
