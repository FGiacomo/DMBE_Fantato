classdef FirstTest < matlab.unittest.TestCase

      methods (Test)
        function testPlotYearlyGDPWithoutPlots(testCase)
            % Test per verificare che la funzione plotYearlyGDP non generi errori grafici
            
            % Definisci dati di esempio
            italyTime = [2010, 2011, 2012, 2013, 2014];
            italyGDP = [100, 120, 150, 130, 160];
            
            franceTime = [2010, 2011, 2012, 2013, 2014];
            franceGDP = [80, 100, 110, 95, 120];
            
            germanyTime = [2010, 2011, 2012, 2013, 2014];
            germanyGDP = [120, 130, 140, 135, 150];
            
            spainTime = [2010, 2011, 2012, 2013, 2014];
            spainGDP = [90, 95, 100, 110, 105];
            
            usaTime = [2010, 2011, 2012, 2013, 2014];
            usaGDP = [150, 160, 180, 170, 200];
            
            % Chiamare la funzione da testare
            try
                % La funzione dovrebbe essere eseguita senza errori grafici
                FirstPoint.plotYearlyGDP(...
                    italyTime, italyGDP, franceGDP, franceTime, ...
                    germanyGDP, germanyTime, spainGDP, spainTime, ...
                    usaGDP, usaTime);
                
                % Verificare che la funzione sia stata eseguita senza errori
                verifyTrue(testCase, true, 'La funzione è stata eseguita senza errori grafici.');
            catch ME
                % Se la funzione genera un errore, visualizzare un messaggio di errore
                testCase.verifyFail('Errore durante l''esecuzione della funzione: %s', ME.message);
            end
        end
    end
end
