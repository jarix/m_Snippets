classdef CustomLoggingPlugin < matlab.unittest.plugins.TestRunnerPlugin
    %CustomLoggingPlugin Records Diagnostic Data for failed test cases
    
    properties (Access=private)
        Stream
    end
    
   methods
       function p = CustomLoggingPlugin(stream)
           if ~nargin
               stream = matlab.unittest.plugins.ToStandardOutput;
           end
           validateattributes(stream,...
               {'matlab.unittest.plugins.OutputStream'},{});
           p.Stream = stream;
       end
   end
   
   methods (Access=protected)
   
        function runTestSuite(plugin, pluginData)
            plugin.Stream.print('\n**** New Test Session at %s ****\n', char(datetime));
            runTestSuite@...
                matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);
        end
        
        function reportFinalizedResult(plugin, pluginData)
            thisResult = pluginData.TestResult;
            if thisResult.Passed 
                status = 'PASSED';
            elseif thisResult.Failed 
                status = 'FAILED';
            elseif thisResult.Incomplete 
                status = 'INCOMPLETE';
            end
                
            plugin.Stream.print('\n--- Test %s --- %s in %f seconds.\n', status, thisResult.Name, thisResult.Duration);
            reportFinalizedResult@...
                matlab.unittest.plugins.TestRunnerPlugin(plugin, pluginData);

        end
    end
        
end

