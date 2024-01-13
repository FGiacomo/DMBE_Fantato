% Fantato Giacomo
% VR507633
% giacomo.fantato@studenti.univr.it
% Github: FGiacomo

classdef ThirdPoint
    methods (Static)
        function cpoint(changesRateIta, changesRateFra, changesRateDe, changesRateEs, changesRateUsa)
            p = [0.90, 0.95, 0.99];
            fileID = fopen('..\Outputs\ex_3_outputs.txt', 'w');
            fprintf(fileID, 'EX. 3 output file \n');
            fprintf(fileID, ' \n');

            fig = figure;
            newFigureName = 'Confidence intervals';
            set(fig, 'Name', newFigureName,'NumberTitle', 'off');

            %% ITA:
            n_ita = length(changesRateIta);
            lowerboundITA = nan(1,length(p));
            upperboundITA = nan(1,length(p));

            meanIta = mean(changesRateIta);
            stdIta = std(changesRateIta);

            fprintf("ITALY\n");
            fprintf(fileID,"ITALY: \n");
            for h = 1:length(p)
                alpha = 1 - p(h);
                t = tinv(p(h)+(alpha/2),n_ita-1);
                lowerboundITA(h) = (meanIta - t*(stdIta/sqrt(n_ita)));
                upperboundITA(h) = (meanIta + t*(stdIta/sqrt(n_ita)));
                fprintf('Confidence Interval for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundITA(h), upperboundITA(h));
                fprintf(fileID,"C.I. for: %.2f%%: [%.4f, %.4f]\n", p(h), lowerboundITA(h), upperboundITA(h));
            end
            fprintf("\n");
            fprintf(fileID, "\n");

            ci = subplot(2, 3, 1);
            plot([lowerboundITA(1),upperboundITA(1)],[0.90,0.90], "LineWidth",1.2);
            hold on;
            plot([lowerboundITA(2),upperboundITA(2)],[0.95,0.95],"LineWidth",1.2);
            hold on;
            plot([lowerboundITA(3),upperboundITA(3)],[0.99,0.99],"LineWidth",1.2, "Color", "#43b02a");
            hold on;
            plot(meanIta,p(1),'*',meanIta,p(2),'*',meanIta,p(3),'*','MarkerEdgeColor','black','MarkerFaceColor','black');
            ylim([0.85,1.05]);
            xlim([0,3]);
            title('C.I. Italy')
            ci.YGrid = 'on';
            xtickformat('percentage');
            yticks(p);


            %% FR:
            n_fr = length(changesRateFra);
            lowerboundFR = nan(1,length(p));
            upperboundFR = nan(1,length(p));

            meanFr = mean(changesRateFra);
            stdFr = std(changesRateFra);

            fprintf("FRANCE\n");
            fprintf(fileID,"FRANCE: \n");
            for h = 1:length(p)
                alpha = 1 - p(h);
                t = tinv(p(h)+(alpha/2),n_fr -1);
                lowerboundFR(h) = (meanFr - t*(stdFr/sqrt(n_fr)));
                upperboundFR(h) = (meanFr + t*(stdFr/sqrt(n_fr)));
                fprintf('Confidence Interval for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundFR(h), upperboundFR(h));
                fprintf(fileID, 'C.I. for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundFR(h), upperboundFR(h));
            end
            fprintf("\n");
            fprintf(fileID, "\n");

            ci = subplot(2,3,2);
            plot([lowerboundFR(1),upperboundFR(1)],[0.90,0.90],"LineWidth",1.2);
            hold ;
            plot([lowerboundFR(2),upperboundFR(2)],[0.95,0.95],"LineWidth",1.2);
            hold on;
            plot([lowerboundFR(3),upperboundFR(3)],[0.99,0.99],"LineWidth",1.2, "Color", "#43b02a");
            hold on;
            plot(meanFr,p(1),'*',meanFr,p(2),'*',meanFr,p(3),'*','MarkerEdgeColor','black','MarkerFaceColor','black');
            ylim([0.85,1.05]);
            xlim([0,3]);
            title('C.I. France');
            ci.YGrid = 'on';
            xtickformat('percentage');
            yticks(p);


            %% DE:
            n_de = length(changesRateDe);
            lowerboundDE = nan(1,length(p));
            upperboundDE = nan(1,length(p));

            meanDe = mean(changesRateDe);
            stdDe = std(changesRateDe);

            fprintf("GERMANY\n");
            fprintf(fileID, "GERMANY: \n");
            for h = 1:length(p)
                alpha = 1 - p(h);
                t = tinv(p(h)+(alpha/2),n_de -1);
                lowerboundDE(h) = (meanDe - t*(stdDe/sqrt(n_de)));
                upperboundDE(h) = (meanDe + t*(stdDe/sqrt(n_de)));
                fprintf('Confidence Interval for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundDE(h), upperboundDE(h));
                fprintf(fileID, 'C.I. for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundDE(h), upperboundDE(h));
            end
            fprintf("\n");
            fprintf(fileID, "\n");

            ci = subplot(2,3,3);
            plot([lowerboundDE(1),upperboundDE(1)],[0.90,0.90],"LineWidth",1.2);
            hold ;
            plot([lowerboundDE(2),upperboundDE(2)],[0.95,0.95],"LineWidth",1.2);
            hold on;
            plot([lowerboundDE(3),upperboundDE(3)],[0.99,0.99],"LineWidth",1.2, "Color", "#43b02a");
            hold on;
            plot(meanDe,p(1),'*',meanDe,p(2),'*',meanDe,p(3),'*','MarkerEdgeColor','black','MarkerFaceColor','black');
            ylim([0.85,1.05]);
            xlim([0,3]);
            title('C.I. Germany');
            ci.YGrid = 'on';
            xtickformat('percentage');
            yticks(p);


            %% ES:
            n_es = length(changesRateEs);
            lowerboundES = nan(1,length(p));
            upperboundES = nan(1,length(p));

            meanEs = mean(changesRateEs);
            stdEs = std(changesRateEs);

            fprintf("SPAIN\n");
            fprintf(fileID, "SPAIN: \n");
            for h = 1:length(p)
                alpha = 1 - p(h);
                t = tinv(p(h)+(alpha/2),n_es -1);
                lowerboundES(h) = (meanFr - t*(stdEs/sqrt(n_es)));
                upperboundES(h) = (meanFr + t*(stdEs/sqrt(n_es)));
                fprintf('Confidence Interval for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundES(h), upperboundES(h));
                fprintf(fileID, 'C.I. for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundES(h), upperboundES(h));
            end
            fprintf("\n");
            fprintf(fileID, "\n");

            ci = subplot(2,3,4);
            plot([lowerboundES(1),upperboundES(1)],[0.90,0.90],"LineWidth",1.2);
            hold ;
            plot([lowerboundES(2),upperboundES(2)],[0.95,0.95],"LineWidth",1.2);
            hold on;
            plot([lowerboundES(3),upperboundES(3)],[0.99,0.99],"LineWidth",1.2, "Color", "#43b02a");
            hold on;
            plot(meanEs,p(1),'*',meanEs,p(2),'*',meanEs,p(3),'*','MarkerEdgeColor','black','MarkerFaceColor','black');
            ylim([0.85,1.05]);
            xlim([0,3]);
            title('C.I. Spain');
            ci.YGrid = 'on';
            xtickformat('percentage');
            yticks(p);

            %% USA:
            n_usa = length(changesRateUsa);
            lowerboundUSA = nan(1,length(p));
            upperboundUSA = nan(1,length(p));

            meanUsa = mean(changesRateUsa);
            stdUsa = std(changesRateUsa);

            fprintf("USA\n");
            fprintf(fileID, "USA: \n");
            for h = 1:length(p)
                alpha = 1 - p(h);
                t = tinv(p(h)+(alpha/2),n_usa -1);
                lowerboundUSA(h) = (meanUsa - t*(stdUsa/sqrt(n_usa)));
                upperboundUSA(h) = (meanUsa + t*(stdUsa/sqrt(n_usa)));
                fprintf('Confidence Interval for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundUSA(h), upperboundUSA(h));
                fprintf(fileID, 'C.I. for: %.2f%%: [%.4f, %.4f]\n', p(h), lowerboundUSA(h), upperboundUSA(h));
            end
            fprintf("\n");
            fprintf(fileID, "\n");
            ci = subplot(2,3,5);
            plot([lowerboundUSA(1),upperboundUSA(1)],[0.90,0.90],"LineWidth",1.2);
            hold ;
            plot([lowerboundUSA(2),upperboundUSA(2)],[0.95,0.95],"LineWidth",1.2);
            hold on;
            plot([lowerboundUSA(3),upperboundUSA(3)],[0.99,0.99],"LineWidth",1.2, "Color", "#43b02a");
            hold on;
            plot(meanUsa,p(1),'*',meanUsa,p(2),'*',meanUsa,p(3),'*','MarkerEdgeColor','black','MarkerFaceColor','black');
            ylim([0.85,1.05]);
            xlim([0,3]);
            title('C.I. USA');
            ci.YGrid = 'on';
            xtickformat('percentage');
            yticks(p);

        end
    end
end
