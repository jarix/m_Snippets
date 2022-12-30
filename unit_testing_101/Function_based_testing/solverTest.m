%% Main function to generate tests
function tests = solverTest
    tests = functiontests(localfunctions)
end


%% Test Functions
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

%% Optional file fixtures
function setupOnce(testCase)  % reserved function name
    % Do one time setup (e.g. setup new path)
    disp('in setupOnce()');
end

function teardownOnce(testCase) % reserved function name
    % Do one time teardown at the end (e.g. restore path)
    disp('in teardownOnce()');
end

% Create Fresh Test Fixture
function setup(testCase)  % reserved function name
    % Setup for each local test function (e.g. open figure)
    disp('in setup()');
end

function teardown(testCase) % reserved function name
    % teardown for ecah test local test function (e.g. close figure)
    disp('in teardown()');
end
