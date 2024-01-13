classdef SecondPointTest < matlab.unittest.TestCase
    methods (Test)
        function testBasicFunctionality(testCase)
            
            % Random input for check all variable (initialization and
            % computation)
            italyGDP = rand(10, 1) * 1000;
            franceGDP = rand(10, 1) * 1000;
            germanyGDP = rand(10, 1) * 1000;
            spainGDP = rand(10, 1) * 1000;
            usaGDP = rand(10, 1) * 1000;


            SecondPoint.bpoint(italyGDP, franceGDP, germanyGDP, spainGDP, usaGDP);

            % Assert over the file path
            outputFilePath = '..\Outputs\ex_2_outputs.txt';
            testCase.assertGreaterThan(exist(outputFilePath, 'file'), 0, 'The output file must be written!!');

            %% END OF THE CLASS TEST:
                % - check the data
                % - check the path of the file
        end
    end
end
