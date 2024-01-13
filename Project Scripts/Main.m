% Fantato Giacomo
% VR507633
% giacomo.fantato@studenti.univr.it
% Github: FGiacomo


%% -------------- Preliminar phase: cleaning the IDE ---------
clear;
clc;
close all;
opengl('save', 'software'); %set OpenGL driver instaed Vulkan GPU acceleration
% setting current folder as part of the path:
currentFolder = pwd;
folderToAdd = fullfile(currentFolder, 'Tests');
addpath(folderToAdd);
warning("off");
%test mode settings:
disp('Welcome to Module I: Data Management for Business & Economics - Homework');
disp('Giacomo Fantato - VR507633 - giacomo.fantato@studenti.univr.it');
disp(' ');
disp('Do you want to launch the Test Mode (Unit - Class tests)? (y/n)');
inputTest = input('', "s");
if strcmpi(inputTest, 'y') || strcmpi(inputTest, 'yes')
    testModeEnable = true;
else
    testModeEnable = false;
end

%% --------- 1) import the datasets -----------
italySet = readtable("..\Datasets\ItalyGDP.csv");
franceSet = readtable("..\Datasets\FranceGDP.csv");
germanySet = readtable("..\Datasets\GermanyGDP.csv");
spainSet = readtable("..\Datasets\SpainGDP.csv");
usaSet = readtable("..\Datasets\usaGDP.csv");

%% NB: un-comment this zone for restore and dump datasets after 19/12/23:
% italySet = readtable("..\DatasetsNew\ItalyGDP.csv");
% franceSet = readtable("..\DatasetsNew\FranceGDP.csv");
% germanySet = readtable("..\DatasetsNew\GermanyGDP.csv");
% spainSet = readtable("..\DatasetsNew\SpainGDP.csv");
% usaSet = readtable("..\DatasetsNew\usaGDP.csv");

% ---------- Starting ACID unit test: -------------------
% check the correctness of import into MatLab and data consistency (53 x 2)
if testModeEnable
    dimensioniItaly = size(italySet);
    dimensioniFrance = size(franceSet);
    dimensioniGermany = size(germanySet);
    dimensioniSpain = size(spainSet);
    dimensioniUSA = size(usaSet);
    if ~UnitTestConsistencyACID(dimensioniItaly, dimensioniFrance, dimensioniGermany, dimensioniSpain, dimensioniUSA)
        error('CRITICAL ERROR: the datasets are incompatible -- ACID TEST FAILED!');
    else
        disp( "------ ACID unit test, passed! ------");
    end
    clear dimensioniItaly dimensioniFrance dimensioniGermany dimensioniSpain dimensioniUSA; % release the RAM allocation after the check
end
% ------------------ End unit test -------------------

% first of all let's split the single dataset in 2 column (one for each
% variable) --> TIME:
italyTime = table2array(italySet(:,1));
franceTime = table2array(franceSet(:,1));
germanyTime = table2array(germanySet(:,1));
spainTime = table2array(spainSet(:,1));
usaTime = table2array(usaSet(:,1));

% --> GDP column:
italyGDP = table2array(italySet(:,2));
franceGDP = table2array(franceSet(:,2));
germanyGDP = table2array(germanySet(:,2));
spainGDP = table2array(spainSet(:,2));
usaGDP = table2array(usaSet(:,2));

%% computing arrays in common for every class:
yeardiffItaly = diff(italyGDP);
changesRateIta = (yeardiffItaly ./ italyGDP(1:end-1)) * 100;
yeardiffFrance = diff(franceGDP);
changesRateFra = (yeardiffFrance ./ franceGDP(1:end-1)) * 100;
yeardiffDe = diff(germanyGDP);
changesRateDe = (yeardiffDe ./ germanyGDP(1:end-1)) * 100;
yeardiffEs = diff(spainGDP);
changesRateEs = (yeardiffEs ./ spainGDP(1:end-1)) * 100;
yeardiffUsa = diff(usaGDP);
changesRateUsa = (yeardiffUsa ./ usaGDP(1:end-1)) * 100;

while true
    disp(' ');
    disp('Menu:');
    disp('Exercise A: enter 1');
    disp('Exercise B: enter 2');
    disp('Exercise C: enter 3');
    disp('Enter "exit" for closing the program');

    choice = input( '', 's');

    if strcmp(choice, 'exit')
        disp('Closing the program...');
        close all;
        break;
    end
    switch str2double(choice)
        case 1
            disp('Exercise A is running...');
            disp(' ');
            %% A) annual changes and annual rates of change for each country
            %------------ ANNUAL CHANGES --------------
            FirstPoint.plotYearlyGDP(italyTime, italyGDP, franceGDP, franceTime, germanyGDP, germanyTime, spainGDP, spainTime, usaGDP, usaTime);
            disp('-------------------------------------------------------');
            if testModeEnable
                disp("----------- RUNNING POINT (A) CLASS TEST -------------")
                runtests('FirstPointTest');
            end
        case 2
            disp('Exercise B is running...');
            disp(' ');
            SecondPoint.bpoint(changesRateIta, changesRateFra, changesRateDe, changesRateEs, changesRateUsa);
            disp('-------------------------------------------------------');
            if testModeEnable
                disp("----------- RUNNING POINT (B) CLASS TEST -------------")
                runtests('SecondPointTest');
            end
        case 3
            disp('Exercise C is running...');
            disp(' ');
            ThirdPoint.cpoint(changesRateIta, changesRateFra, changesRateDe, changesRateEs, changesRateUsa);
            if testModeEnable
                disp("----------- RUNNING POINT (C) CLASS TEST -------------")
                runtests('ThirdPointTest');
            end
        otherwise
            disp('Invalid choice. Try again.');
    end
end