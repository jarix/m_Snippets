classdef mySampleDiagTest < matlab.unittest.TestCase
    %MYSAMPLEDIAGTEST Sample Test Class to check custom Daignostic Plugin
    
    properties
        Property1
    end
    
    methods (Test)
        function testA(testCase)
            a = 5;
            testCase.verifyEqual(a, 5);
        end
        function testB(testCase)
            b = 6;
            testCase.verifyEqual(b, 7, 'Values not Equal');
        end
        function testC(testCase)
            badData = 'bad';
            testCase.verifyEmpty(badData, 'Not Empty');
            testCase.verifyClass(badData, 'double', 'Not Double');
        end
        function testD(testCase)
            d = 16;
            testCase.assertEqual(d, 14, 'Values Not Equal');
        end
        function testE(testCase)
            e = 20;
            testCase.verifyLessThan(e, 21);
        end 
        function testF(testCase)
            f = 20;
            testCase.assertGreaterThan(f, 21);
        end       
        function testG(testCase)
            g = 16;
            testCase.fatalAssertEqual(g, 17);
        end       
    end
end

