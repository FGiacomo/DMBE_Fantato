%% ------------- ENABLE UNIT TEST ------------------
function risultato = UnitTestConsistencyACID(italyGDP, franceGDP, germanyGDP, spainGDP, usaGDP)
    risultato = isequal(size(italyGDP), size(franceGDP), size(germanyGDP), size(spainGDP), size(usaGDP));
end
% unit test: aim verify the integrity of ds, like ACID prop. 
