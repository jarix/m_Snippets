clear

% Create Test Suite
ts = matlab.unittest.TestSuite.fromClass(?SolverTestClass);

% Create Test Runner
runner = matlab.unittest.TestRunner.withNoPlugins;

% Run tests
results = runner.run(ts);
table(results)

disp('Test complete with No Plugins');
disp('Press Any Key to continue with Progress Plugin');
pause;

% Run with Progress Plugin
import matlab.unittest.plugins.TestRunProgressPlugin

% Add Plugin to Runner 
runner.addPlugin(TestRunProgressPlugin.withVerbosity(2));

% Run tests again
results = runner.run(ts);
table(results)
