classdef SolverTestClass < matlab.unittest.TestCase
    %SOLVERTEST Unit test for quadratic solver
    
    properties
        Property1
    end

    %% Test Block
    methods (Test)
        function testReal(testCase)
            % check solution with real numbers
            disp('in testReal()');
            actual = quadraticSolver(1, -3, 2);
            expected = [2 1];
            verifyEqual(testCase, actual, expected)
        end

        function testImaginary(testCase)
            % check solution with imaginary numbers
            disp('in testImaginary()');
            actual = quadraticSolver(1, 2, 10);
            expected = [-1+3i -1-3i];
            verifyEqual(testCase, actual, expected)
        end
    end
end

