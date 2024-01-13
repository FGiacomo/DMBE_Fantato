% Fantato Giacomo
% VR507633
% giacomo.fantato@studenti.univr.it
% Github: FGiacomo

classdef SecondPoint
    methods (Static)
        function bpoint(changesRateIta, changesRateFra, changesRateDe, changesRateEs, changesRateUsa)
            %
            % relevant descriptive statistics of the RATES of change -->
            %  location, dispersion and dependence estimators
            %
            %% --------- ITALY -----------
            disp('-------------------- ITALY ------------------------');
            % yeardiffItaly = diff(italyGDP);
            % changesRateIta = (yeardiffItaly ./ italyGDP(1:end-1)) * 100;
            meanItaly = mean(changesRateIta);
            fprintf('Sample mean: %.4f\n', meanItaly);
            medianItaly = median(changesRateIta);
            fprintf('Median: %.4f\n', medianItaly);
            modeItaly = mode(changesRateIta);
            fprintf('Mode: %.4f\n', modeItaly);
            % -------- dispersion estimators: ------------
            rangeItaly = max(changesRateIta)-min(changesRateIta);
            fprintf('Range: %.4f\n', rangeItaly);
            %IQR:
            iqrItaly = quantile(changesRateIta,0.75)-quantile(changesRateIta,0.25);
            fprintf('IQR %.4f\n', iqrItaly);
            stdIta = std(changesRateIta);
            fprintf("Standard deviation: %.4f\n", stdIta);
            varIta = var(changesRateIta);
            fprintf("Variance: %.4f\n", varIta);

            %% ----------- FRANCE ---------------
            disp('');
            disp('-------------------- FRANCE ------------------------');
            % yeardiffFrance = diff(franceGDP);
            % changesRateFra = (yeardiffFrance ./ franceGDP(1:end-1)) * 100;
            meanFrance = mean(changesRateFra);
            fprintf('Sample mean: %.4f\n', meanFrance);
            medianFrance = median(changesRateFra);
            fprintf('Median: %.4f\n', medianFrance);
            modeFrance = mode(changesRateFra);
            fprintf('Mode: %.4f\n', modeFrance);
            rangeFrance = max(changesRateFra)-min(changesRateFra);
            fprintf('Range: %.4f \n', rangeFrance);
            %IQR:
            iqrFrance = quantile(changesRateFra,0.75)-quantile(changesRateFra,0.25);
            fprintf('IQR %.4f\n', iqrFrance);
            stdFr = std(changesRateFra);
            disp("Standard deviation: " + stdFr);
            varFr = var(changesRateFra);
            disp("Variance: " + varFr);

            %% ----------- GERMANY ---------------
            disp('');
            disp('-------------------- GERMANY ------------------------');
            % yeardiffDe = diff(germanyGDP);
            % changesRateDe = (yeardiffDe ./ germanyGDP(1:end-1)) * 100;
            meanDe = mean(changesRateDe);
            fprintf('Sample mean: %.4f\n', meanDe);
            medianDe = median(changesRateDe);
            fprintf('Median: %.4f\n', medianDe);
            modeDe = mode(changesRateDe);
            fprintf('Mode: %.4f \n', modeDe);
            disp('');
            rangeDe = max(changesRateDe)-min(changesRateDe);
            fprintf('Range: %.4f\n', rangeDe);
            %IQR:
            iqrDe = quantile(changesRateDe,0.75)-quantile(changesRateDe,0.25);
            fprintf('IQR %.4f \n', iqrDe);
            stdDe = std(changesRateDe);
            disp("Standard deviation: " + stdDe);
            varDe = var(changesRateDe);
            disp("Variance: " + varDe);

            %% ----------- SPAIN ---------------
            disp('');
            disp('-------------------- SPAIN ------------------------');
            % yeardiffEs = diff(spainGDP);
            % changesRateEs = (yeardiffEs ./ spainGDP(1:end-1)) * 100;
            meanEs = mean(changesRateEs);
            fprintf('Sample mean: %.4f \n', meanEs);
            medianEs = median(changesRateEs);
            fprintf('Median: %.4f \n', medianEs);
            modeEs = mode(changesRateEs);
            fprintf('Mode: %.4f \n', modeEs);
            rangeEs = max(changesRateEs)-min(changesRateEs);
            fprintf('Range: %.4f \n', rangeEs);
            %IQR:
            iqrEs = quantile(changesRateEs,0.75)-quantile(changesRateEs,0.25);
            fprintf('IQR %.4f \n', iqrEs);
            stdEs = std(changesRateEs);
            disp("Standard deviation: " + stdEs);
            varEs = var(changesRateEs);
            disp("Variance: " + varEs);

            %% ----------- USA ---------------
            disp('');
            disp('-------------------- USA ------------------------');
            % yeardiffUsa = diff(usaGDP);
            % changesRateUsa = (yeardiffUsa ./ usaGDP(1:end-1)) * 100;
            meanUsa = mean(changesRateUsa);
            fprintf('Sample mean: %.4f \n', meanUsa);
            medianUsa = median(changesRateUsa);
            fprintf('Median: %.4f \n', medianUsa);
            modeUsa = mode(changesRateUsa);
            fprintf('Mode: %.4f \n', modeUsa);
            rangeUsa = max(changesRateUsa)-min(changesRateUsa);
            fprintf('Range: %.4f\n', rangeUsa);
            %IQR:
            iqrUsa = quantile(changesRateUsa,0.75)-quantile(changesRateUsa,0.25);
            fprintf('IQR: %.4f \n', iqrUsa);
            stdUsa = std(changesRateUsa);
            disp("Standard deviation: " + stdUsa);
            varUsa = var(changesRateUsa);
            disp("Variance: " + varUsa);

            %% ---------- PROB Distr. GDP ROC -------------
            % figure;
            % totClass = length(italyGDP);     % =.length in JAVA 8
            % histogram(changesRateIta, totClass);
            % title("histogram of prob. distr. - PDF Italian ROC GDP");
            % subplot(1,2,1);
            % totClassEs = length(spainGDP);     % =.length in JAVA 8
            % histogram(changesRateEs, totClassEs);
            % title("histogram of prob. distr. - PDF Spain ROC GDP");
            % subplot(1,2,2);

            %% ------------ BOXPLOTS ----------------------
            fig = figure;
            newFigureName = 'Boxplots';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            boxplot([changesRateIta,changesRateFra, changesRateDe, changesRateEs, changesRateUsa],'labels',{'Italy','France', 'Germany', 'Spain', 'USA'});
            title('Annual rate of change in constants GDPs per capita');

            %% HISTOGRAMS: --> fixed number of el.
            fig2 = figure;
            newFigureName2 = 'Histograms';
            set(fig2, 'Name', newFigureName2,'NumberTitle', 'off');
            subplot(2, 3, 1);
            nClass = 52;
            histogram(changesRateIta,nClass);
            title('Italy');
            xlabel('(%)');
            subplot(2, 3, 2);
            histogram(changesRateFra,nClass);
            title('France');
            xlabel('(%)');
            subplot(2, 3, 3);
            histogram(changesRateDe,nClass);
            title('Germany');
            xlabel('(%)');
            subplot(2, 3, 4);
            histogram(changesRateEs,nClass);
            title('Spain');
            xlabel('(%)');
            subplot(2, 3, 5);
            histogram(changesRateUsa,nClass);
            title('U.S.A.');
            xlabel('(%)');
            sgtitle('Distributions', 'FontSize', 15', 'FontWeight', 'Bold');



            %% Dependence estimators - Change in GDP --> (n-1)*n
            disp(" ");
            disp("Covariance Matrix:");
            countries={'Italy','France','Germany','Spain','U.S.A.'};
            covMatrix = cov([changesRateIta,changesRateFra,changesRateDe,changesRateEs,changesRateUsa]);
            disp(array2table(covMatrix,'RowNames',countries,'VariableNames',countries));
            disp(" ");
            disp("Correlation Matrix:");
            corMatrix = corr([changesRateIta,changesRateFra,changesRateDe,changesRateEs,changesRateUsa]);
            disp(array2table(corMatrix,'RowNames',countries,'VariableNames',countries));

            %
            % % ITA:
            % fprintf("ITALY: \n");
            % covITFR = cov(changesRateIta,changesRateFra);
            % fprintf("Covariance matrix IT - FR:\n ");
            % fprintf('%.4f  %.4f\n', covITFR(1, :));
            % fprintf('%.4f  %.4f\n', covITFR(2, :));
            % covITDE = cov(changesRateIta,changesRateDe);
            % fprintf("Covariance matrix IT - DE:\n ");
            % fprintf('%.4f\t%.4f\n', covITDE');
            % covITES = cov(changesRateIta,changesRateEs);
            % fprintf("Covariance matrix IT - ES:\n ");
            % fprintf('%.4f\t%.4f\n', covITES');
            % covITUSA = cov(changesRateIta,changesRateUsa);
            % fprintf("Covariance matrix IT - USA:\n ");
            % fprintf('%.4f\t%.4f\n', covITUSA');
            % fprintf("\n");
            %
            %
            % % FRA:
            % fprintf("FRANCE: \n");
            % covFRIT = cov(changesRateFra,changesRateIta);
            % fprintf("Covariance matrix FR - IT:\n ");
            % fprintf('%.4f\t%.4f\n', covFRIT');
            % covFRDE = cov(changesRateFra,changesRateDe);
            % fprintf("Covariance matrix FR - DE:\n ");
            % fprintf('%.4f\t%.4f\n', covFRDE');
            % covFRES = cov(changesRateFra,changesRateEs);
            % fprintf("Covariance matrix FR - ES:\n ");
            % fprintf('%.4f\t%.4f\n', covFRES');
            % covFRUSA = cov(changesRateFra,changesRateUsa);
            % fprintf("Covariance matrix FR - USA:\n ");
            % fprintf('%.4f\t%.4f\n', covFRUSA');
            %
            % % DE:
            % fprintf("GERMANY: \n");
            % covDEIT = cov(changesRateDe,changesRateIta);
            % fprintf("Covariance matrix DE - IT:\n ");
            % fprintf('%.4f\t%.4f\n', covDEIT');
            % covDEFR = cov(changesRateDe,changesRateFra);
            % fprintf("Covariance matrix DE - FR:\n ");
            % fprintf('%.4f\t%.4f\n', covDEFR');
            % covDEES = cov(changesRateDe,changesRateEs);
            % fprintf("Covariance matrix DE - ES:\n ");
            % fprintf('%.4f\t%.4f\n', covDEES');
            % covDEUSA = cov(changesRateDe,changesRateUsa);
            % fprintf("Covariance matrix DE - USA:\n ");
            % fprintf('%.4f\t%.4f\n', covDEUSA');
            %
            % % ES:
            % fprintf("SPAIN: \n");
            % covESIT = cov(changesRateEs,changesRateIta);
            % fprintf("Covariance matrix ES - IT:\n ");
            % fprintf('%.4f\t%.4f\n', covESIT');
            % covESFR = cov(changesRateEs,changesRateFra);
            % fprintf("Covariance matrix ES - FR:\n ");
            % fprintf('%.4f\t%.4f\n', covESFR');
            % covESDE = cov(changesRateEs,changesRateDe);
            % fprintf("Covariance matrix ES - DE:\n ");
            % fprintf('%.4f\t%.4f\n', covESDE');
            % covESUSA = cov(changesRateEs,changesRateUsa);
            % fprintf("Covariance matrix ES - USA:\n ");
            % fprintf('%.4f\t%.4f\n', covESUSA');
            %
            % % USA
            % fprintf("USA: \n");
            % covUSAIT = cov(changesRateUsa,changesRateIta);
            % fprintf("Covariance matrix USA - IT:\n ");
            % fprintf('%.4f\t%.4f\n', covUSAIT');
            % covUSAFR = cov(changesRateUsa,changesRateFra);
            % fprintf("Covariance matrix USA - FR:\n ");
            % fprintf('%.4f\t%.4f\n', covUSAFR');
            % covUSAES = cov(changesRateUsa,changesRateEs);
            % fprintf("Covariance matrix USA - ES:\n ");
            % fprintf('%.4f\t%.4f\n', covUSAES');
            % covUSADE = cov(changesRateUsa,changesRateDe);
            % fprintf("Covariance matrix USA - DE:\n ");
            % fprintf('%.4f\t%.4f\n', covUSADE');


            %% ------ plot covariance -----> total: 10 graphs.
            %% ITALY:
            fig = figure;
            newFigure = 'Correlations';
            set(fig, 'Name', newFigure,'NumberTitle', 'off');
            a1 = subplot(3,4,1);
            plot(changesRateIta,changesRateFra,'*');
            lsline;
            title('ITA - FR');
            xlabel('Italy');
            ylabel('France');

            a2 = subplot(3,4,2);
            plot(changesRateIta,changesRateDe,'*');
            lsline;
            title('ITA - DE');
            xlabel('Italy');
            ylabel('Germany');

            a3 = subplot(3,4,3);
            plot(changesRateIta,changesRateEs,'*');
            lsline;
            title('ITA - ES');
            xlabel('Italy');
            ylabel('Spain');

            a4 = subplot(3,4,4);
            plot(changesRateIta,changesRateUsa,'*');
            lsline;
            title('ITA - USA');
            xlabel('Italy');
            ylabel('USA');

            a5 = subplot(3,4,5);
            plot(changesRateFra,changesRateDe,'*');
            lsline;
            title('FR - DE');
            xlabel('France');
            ylabel('Germany');

            a6 = subplot(3,4,6);
            plot(changesRateFra,changesRateEs,'*');
            lsline;
            title('FR - ES');
            xlabel('France');
            ylabel('Spain');

            a7 = subplot(3,4,7);
            plot(changesRateFra,changesRateUsa,'*');
            lsline;
            title('FR - U.S.A');
            xlabel('France');
            ylabel('USA');

            a8 = subplot(3,4,8);
            plot(changesRateDe,changesRateEs,'*');
            lsline;
            title('DE - ES');
            xlabel('Germany');
            ylabel('Spain');


            a9 = subplot(3,4,9);
            plot(changesRateDe,changesRateUsa,'*');
            lsline;
            title('DE - U.S.A');
            xlabel('Germany');
            ylabel('U.S.A');


            a10 = subplot(3,4,10);
            plot(changesRateUsa,changesRateEs,'*');
            lsline;
            title('USA - ES');
            xlabel('USA');
            ylabel('ES');

            linkaxes([a1,a2,a3,a4,a5,a6,a7,a8,a9,a10],'y')
            sgtitle('Correlations', 'FontSize', 15', 'FontWeight', 'Bold');


            %% exporting the outputs in a .txt file following standard ANSI/IEEE 754-1985
            fileID = fopen('..\Outputs\ex_2_outputs.txt', 'w');
            fprintf(fileID, 'EX. 2 output file \n');
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- sample mean ---------\n');
            fprintf(fileID, 'meanIta: %d\n', meanItaly);
            fprintf(fileID, 'meanFr: %s\n', meanFrance);
            fprintf(fileID, 'meanDe: %s\n', meanDe);
            fprintf(fileID, 'meanEs: %s\n', meanEs);
            fprintf(fileID, 'meanUsa: %s\n', meanUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- mode ---------\n');
            fprintf(fileID, 'modeIta: %d\n', modeItaly);
            fprintf(fileID, 'modeFr: %s\n', modeFrance);
            fprintf(fileID, 'modeDe: %s\n', modeDe);
            fprintf(fileID, 'modeEs: %s\n', modeEs);
            fprintf(fileID, 'modeUsa: %s\n', modeUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- median ---------\n');
            fprintf(fileID, 'medianIta: %d\n', medianItaly);
            fprintf(fileID, 'medianFr: %s\n', medianFrance);
            fprintf(fileID, 'medianDe: %s\n', medianDe);
            fprintf(fileID, 'medianEs: %s\n', medianEs);
            fprintf(fileID, 'medianUsa: %s\n', medianUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- range ---------\n');
            fprintf(fileID, 'rangeIta: %d\n', rangeItaly);
            fprintf(fileID, 'rangeFr: %s\n', rangeFrance);
            fprintf(fileID, 'rangeDe: %s\n', rangeDe);
            fprintf(fileID, 'rangeEs: %s\n', rangeEs);
            fprintf(fileID, 'rangeUsa: %s\n', rangeUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- IQR ---------\n');
            fprintf(fileID, 'iqrIta: %d\n', iqrItaly);
            fprintf(fileID, 'iqrFrance: %s\n', iqrFrance);
            fprintf(fileID, 'iqrDe: %s\n', iqrDe);
            fprintf(fileID, 'iqrEs: %s\n', iqrEs);
            fprintf(fileID, 'iqrUsa: %s\n', iqrUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- Sample Variance ---------\n');
            fprintf(fileID, 'varIta: %d\n', varIta);
            fprintf(fileID, 'varFr: %s\n', varFr);
            fprintf(fileID, 'varDe: %s\n', varDe);
            fprintf(fileID, 'varEs: %s\n', varEs);
            fprintf(fileID, 'varUsa: %s\n', varUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '--------- Sample Standard Deviation ---------\n');
            fprintf(fileID, 'stdIta: %d\n', stdIta);
            fprintf(fileID, 'stdFr: %s\n', stdFr);
            fprintf(fileID, 'stdDe: %s\n', stdDe);
            fprintf(fileID, 'stdEs: %s\n', stdEs);
            fprintf(fileID, 'stdUsa: %s\n', stdUsa);
            fprintf(fileID, ' \n');
            fprintf(fileID, '\n');
            fprintf(fileID, '\n');
            fprintf(fileID,'Covariance Matrix:\n');
            fprintf(fileID, ' \n');
            fprintf(fileID, '%-10s', 'Paesi');
            fprintf(fileID, '%-15s', countries{:});
            fprintf(fileID,'\n-----------------------------------------------------------------------------------\n');

            for i = 1:length(countries)
                fprintf(fileID,'%-10s', countries{i});
                fprintf(fileID,'%-15.4f', covMatrix(i, :));
                fprintf(fileID,'\n');
            end
            fprintf(fileID, '\n');
            fprintf(fileID, '\n');
            fprintf(fileID,'Correlation Matrix:\n');
            fprintf(fileID, ' \n');
            fprintf(fileID, '%-10s', 'Paesi');
            fprintf(fileID, '%-15s', countries{:});
            fprintf(fileID,'\n-----------------------------------------------------------------------------------\n');

            for i = 1:length(countries)
                fprintf(fileID,'%-10s', countries{i});
                fprintf(fileID,'%-15.4f', corMatrix(i, :));
                fprintf(fileID,'\n');
            end
            % fprintf(fileID, "Covariance Matrix: \n");
            % fprintf(fileID, "\n");
            % fprintf(fileID, 'ITALY: \n');
            % fprintf(fileID,"Covariance matrix IT - FR:\n ");
            % fprintf(fileID,'%.4f  %.4f\n', covITFR(1, :));
            % fprintf(fileID,'%.4f  %.4f\n', covITFR(2, :));
            % fprintf(fileID,"Covariance matrix IT - DE:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covITDE');
            % fprintf(fileID,"Covariance matrix IT - ES:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covITES');
            % fprintf(fileID,"Covariance matrix IT - USA:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covITUSA');
            % fprintf(fileID, "\n");
            % fprintf(fileID, "FRANCE: \n");
            % fprintf(fileID,"Covariance matrix FR - IT:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covFRIT');
            % fprintf(fileID,"Covariance matrix FR - DE:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covFRDE');
            % fprintf(fileID,"Covariance matrix FR - ES:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covFRES');
            % fprintf(fileID,"Covariance matrix FR - USA:\n ");
            % fprintf(fileID,'%.4f\t%.4f\n', covFRUSA');
            % fprintf(fileID, "\n");
            % fprintf(fileID, "GERMANY: \n");
            % fprintf(fileID, "Covariance matrix DE - IT:\n ");
            % fprintf(fileID, '%.4f\t%.4f\n', covDEIT');
            % fprintf(fileID, "Covariance matrix DE - FR:\n ");
            % fprintf(fileID, '%.4f\t%.4f\n', covDEFR');
            % fprintf(fileID, "Covariance matrix DE - ES:\n ");
            % fprintf(fileID, '%.4f\t%.4f\n', covDEES');
            % fprintf(fileID, "Covariance matrix DE - USA:\n ");
            % fprintf(fileID, '%.4f\t%.4f\n', covDEUSA');
            fclose(fileID);
        end
    end
end