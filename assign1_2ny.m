Data0 = importdata('sample2022_ass1.txt'); % Import data set
size = 40; % Bars

figure;
h_pd = histogram(Data0, size, 'Normalization', 'probability'); % Probability distribution of Data0

h_val = h_pd.Values;
csum = cumsum(h_val); % Cumulative 

% figure;
% cdf = bar(csum);
% title('CDF')
% xlabel('value')

%list_pkt = zeros(1, size);


%rng(1); Seed for reproducibility of results
DataNew = zeros(); % Array to inset new random data from Data0

% DataNew generated from cumulative sum of Data0
for i = 1:500
    u = rand; %sampling a random value U(0,1)
    for j = 1:length(csum)
        if u <= csum(j)
            if j == 1
                x1 = j-1; % set x1 = left RV
                x2 = j; % set x2 = right RV
                y1 = 0; % set y1 = left CDF value
                y2 = csum(j); % set y2 = right CDF value
                break;
            else
                x1 = j-1; % set x1 = left RV
                x2 = j; % set x2 = right RV
                y1 = csum(j-1); % set y1 = left CDF value
                y2 = csum(j); % set y2 = right CDF value
                break;
            end
        end
    end
    DataNew(i) = (u-y1)*(x2-x1)/(y2-y1)+x1; 
end

list_pkt1 = (1:size);
figure
subplot(1,2,1)
cdf_c = histogram(DataNew, size, 'Normalization','pdf');
set(gca,'FontSize',18);
subplot(1,2,2);
d0b = bar(list_pkt1, h_val);
set(gca,'FontSize',18);

%% Kullback-Leibler

% Calculate KL with normalized data
sum_kl1 = 0; % Data0 - DataNew
sum_kl2 = 0; % DataNew - Data0
for i = 1:length(cdf_c.Values)
    sum_kl1 = sum_kl1 + h_val(i)*(log(h_val(i)/cdf_c.Values(i))); % Data0 compared with DataNew
    sum_kl2 = sum_kl2 + cdf_c.Values(i)*(log(cdf_c.Values(i)/h_val(i))); % DataNew compared with Data0
end
