classdef FormatHexFixture < matlab.unittest.fixtures.Fixture
    %FORMATHEXFIXTURE Changes the display format to hex and restores back
    %to original format
    
    properties (Access=private)
        OrigFormat
    end
    
    methods
        function setup(fixture) 
            fixture.OrigFormat = get(0, 'Format');
            set(0, 'Format', 'hex');
        end
        
        function teardown(fixture)
            set(0, 'Format', fixture.OrigFormat);
        end
    end
end

