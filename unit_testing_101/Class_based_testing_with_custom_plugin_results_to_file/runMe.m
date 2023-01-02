clear

% Create Test Suite
import matlab.unittest.TestSuite
ts = TestSuite.fromClass(?mySampleDiagTest)

% Create Test Runner
import matlab.unittest.TestRunner
runner = TestRunner.withNoPlugins

% Instantiate and add Plugin
p = CustomLoggingPlugin
runner.addPlugin(p)

% Run tests
results = runner.run(ts);

disp('Test complete displaying to Standard Output');
disp('Press Any Key to rerun writing results to a txt file');
pause;

clear runner
runner = TestRunner.withNoPlugins

% Instantiate and add Plugin with filename argument
fname = 'results.txt';
p = CustomLoggingPlugin(matlab.unittest.plugins.ToFile(fname))
runner.addPlugin(p)

% Run tests
results = runner.run(ts);
