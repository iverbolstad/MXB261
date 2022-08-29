%%
Data0 = importdata('sample2022_ass1.txt');
h = histogram(Data0, 20, 'Normalization','cdf');

hval = h.Values;

figure;
cd = histogram(Data0, 20);

for i = 1:length(cd.Values)
     liste_midtpnk(i) = (cd.BinEdges(i)+cd.BinEdges(i+1))/2;
end

DataNew = [];
for i = 1:500
    randnum = rand; % Decimal value (rand)
    for j = 1:length(hval)
        if randnum <= hval(j)
            DataNew(i) = liste_midtpnk(j);
            break;
        end
    end
end

subplot(1,2,1);
cd = histogram(Data0, 20);
subplot(1,2,2);
nn = histogram(DataNew, 20);

%% Kullback-Leibler

% Normalize data
Data0N = zeros(1, 20);
DataNewN = zeros(1, 20);

for i = 1:20
    Data0N(i) = cd.Values(i)/500;
    DataNewN(i) = nn.Values(i)/500;
end
% trenger ikke
figure;
subplot(1,2,1);
bar(Data0N);
subplot(1,2,2);
bar(DataNewN);

% Calculate KL with normalized data
sum_kl = 0;
for i = 1:length(Data0N)
    sum_kl = sum_kl + Data0N(i)*(log(Data0N(i)/DataNewN(i)));
end

disp(sum_kl);

