clear

% Create Test Suite
import matlab.unittest.TestSuite
ts = TestSuite.fromClass(?mySampleDiagTest)

% Create Test Runner
import matlab.unittest.TestRunner
runner = TestRunner.withNoPlugins

% Instantiate and add Plugin
p = CustomDiagnosticPlugin
runner.addPlugin(p)

% Run tests
results = runner.run(ts);

% Display results (run in Command Window)
p.FailedTestData




