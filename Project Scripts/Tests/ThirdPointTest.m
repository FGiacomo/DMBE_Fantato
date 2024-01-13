classdef ThirdPointTest < matlab.unittest.TestCase
    methods (Test)
        function testCPointMethod(tc)
            % Generate sample data (you can replace this with your actual data)
            changesRateIta = randn(100, 1);
            changesRateFra = randn(100, 1);
            changesRateDe = randn(100, 1);
            changesRateEs = randn(100, 1);
            changesRateUsa = randn(100, 1);

            % Call the method under test
            ThirdPoint.cpoint(changesRateIta, changesRateFra, changesRateDe, changesRateEs, changesRateUsa);

            % Perform assertions or checks if needed
            % For example, check if the figure is created
            figHandle = findobj('Type', 'figure', 'Name', 'Confidence intervals');
            tc.verifyNotEmpty(figHandle, 'Figure not found.');

        end
    end
end
