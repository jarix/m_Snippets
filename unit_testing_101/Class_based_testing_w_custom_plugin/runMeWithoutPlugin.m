clear

% Create Test Suite
ts = matlab.unittest.TestSuite.fromClass(?mySampleDiagTest)

% Create Test Runner
import matlab.unittest.TestRunner
runner = TestRunner.withNoPlugins

% Run tests
results = runner.run(ts);
table(results)

