classdef FirstPointTest < matlab.unittest.TestCase
    methods (Test)
    function testPlotYearlyGDP(testCase)
        % Test per il metodo plotYearlyGDP

        % Creare dati di esempio (sostituire con i dati reali)
        italyTime = [2000, 2001, 2002];
        italyGDP = [100, 120, 150];

        % Chiamare il metodo da testare
        FirstPoint.plotYearlyGDP(italyTime, italyGDP);

        % Verificare se il test è passato (sostituire con le condizioni di test reali)
        % Ad esempio, puoi verificare se il grafico è stato creato correttamente
        figHandles = findobj('Type', 'figure');
        actualFigureName = get(figHandles(1), 'Name');
        expectedFigureName = 'ITALY - annual GDP changes';
        testCase.verifyEqual(actualFigureName, expectedFigureName, 'I nomi delle figure devono essere uguali');

    end
end

end
