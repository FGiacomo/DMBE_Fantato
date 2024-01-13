% Fantato Giacomo
% VR507633
% giacomo.fantato@studenti.univr.it
% Github: FGiacomo

classdef FirstPoint
    methods (Static)
        function plotYearlyGDP(italyTime, italyGDP, franceGDP, franceTime, germanyGDP, germanyTime, spainGDP, spainTime, usaGDP, usaTime)
            %% ---------- ITALY ----------
            %Annual GDP changes
            yeardiffItaly = diff(italyGDP);
            fig = figure;
            newFigureName = 'ITALY';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            subplot(1, 2, 1);
            plot(italyTime(2:end), yeardiffItaly, '-o','LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('Italy GDP annual changes');
            xlabel('Year (YYYY)');
            ylabel('USD - $');

            % annual GDP changes rate:
            changesRateIta = (yeardiffItaly ./ italyGDP(1:end-1)) * 100;
            subplot(1, 2, 2);
            plot(italyTime(2:end), changesRateIta, '-o', "Color", "red",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('Italy GDP annual rate of changes');
            xlabel('Year (YYYY)');
            ylabel('%');

            %% ------------ FRANCE ---------------
            yeardiffFrance = diff(franceGDP);
            fig = figure;
            newFigureName = 'FRANCE';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            subplot(1, 2, 1);
            plot(franceTime(2:end), yeardiffFrance, '-o','LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('France GDP annual changes');
            xlabel('Year (YYYY)');
            ylabel('USD - $');
            % annual GDP changes rate:
            changesRateFrance = (yeardiffFrance ./ franceGDP(1:end-1)) * 100;
            subplot(1, 2, 2);
            plot(franceTime(2:end), changesRateFrance, '-o', "Color", "red",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('France GDP annual rate of changes');
            xlabel('Year (YYYY)');
            ylabel('%');

            %% ------------ GERMANY ---------------
            yeardiffGermany = diff(germanyGDP);
            fig = figure;
            newFigureName = 'GERMANY';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            subplot(1, 2, 1);
            plot(germanyTime(2:end), yeardiffGermany, '-o','LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('Germany GDP annual changes');
            xlabel('Year (YYYY)');
            ylabel('USD - $');
            % annual GDP changes rate:
            changesRateGermany = (yeardiffGermany ./ germanyGDP(1:end-1)) * 100;
            subplot(1, 2, 2);
            plot(germanyTime(2:end), changesRateGermany, '-o', "Color", "red",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('Germany GDP annual rate of changes');
            xlabel('Year (YYYY)');
            ylabel('%');

            %% ------------ SPAIN ---------------
            yeardiffSpain = diff(spainGDP);
            fig = figure;
            newFigureName = 'SPAIN';
            subplot(1, 2, 1);
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            plot(spainTime(2:end), yeardiffSpain, '-o','LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('France GDP annual changes');
            xlabel('Year (YYYY)');
            ylabel('USD - $');
            % annual GDP changes rate:
            changesRateSpain = (yeardiffSpain ./ spainGDP(1:end-1)) * 100;
            subplot(1, 2, 2);
            plot(spainTime(2:end), changesRateSpain, '-o', "Color", "red",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('Spain GDP annual rate of changes');
            xlabel('Year (YYYY)');
            ylabel('%');

            %% ------------ USA ---------------
            yeardiffUsa = diff(usaGDP);
            fig = figure;
            newFigureName = 'USA';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            subplot(1, 2, 1);
            plot(usaTime(2:end), yeardiffUsa, '-o','LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('U.S.A. GDP annual changes');
            xlabel('Year (YYYY)');
            ylabel('USD - $');
            % annual GDP changes rate:
            changesRateUsa = (yeardiffUsa ./ usaGDP(1:end-1)) * 100;
            subplot(1, 2, 2);
            plot(usaTime(2:end), changesRateUsa, '-o', "Color", "red",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            title('U.S.A. GDP annual rate of changes');
            xlabel('Year (YYYY)');
            ylabel('%');

            %% ----------- SUMMARIZE PLOT: -------------------
            fig = figure;
            newFigureName = 'SUMMARIZE';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');
            subplot(1,2,1);
            plot(italyTime(2:end), yeardiffItaly, "Color", '#0077cc','LineWidth', 0.7);
            hold on;
            plot(franceTime(2:end), yeardiffFrance,"Color", '#ff0000','LineWidth', 0.7);
            plot(germanyTime(2:end), yeardiffGermany, "Color", '#00cc00','LineWidth', 0.7);
            plot(spainTime(2:end), yeardiffSpain, "Color", '#990099','LineWidth', 0.7);
            plot(usaTime(2:end), yeardiffUsa, "Color", "#ff9900",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            legend("Italy", "France","Germany", "Spain", "USA",'Location', 'southwest');
            title("Annual GDP changes");
            xlabel('Year (YYYY)');
            ylabel('USD ($)');

            subplot(1,2,2);
            plot(italyTime(2:end), changesRateIta, "Color", '#0077cc','LineWidth', 0.7);
            hold on;
            plot(franceTime(2:end), changesRateFrance,"Color", '#ff0000','LineWidth', 0.7);
            plot(germanyTime(2:end), changesRateGermany, "Color", '#00cc00','LineWidth', 0.7);
            plot(spainTime(2:end), changesRateSpain, "Color", '#990099','LineWidth', 0.7);
            plot(usaTime(2:end), changesRateUsa, "Color", "#ff9900",'LineWidth', 0.7);
            yline(0, 'LineWidth', 0.6, "Color", "#9b9c9e");
            legend("Italy", "France","Germany", "Spain", "USA",'Location', 'southwest');
            title("Annual GDP rate of changes");
            xlabel('Year (YYYY)');
            ylabel('%');
        end
    end
end
