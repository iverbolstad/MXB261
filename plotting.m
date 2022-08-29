%% Probability case i
N = 100; %Particles

%Probabilities for movement
s = 1/3;
e = 1/3;
w = 1; % This variable not needed, just for display

P = 1; %position

dom = assign1(N,P,s,e);
dom1 = assign1(N+100,P,s,e);
summen = sum(dom);
summen1 = sum(dom1);

dom2 = assign1(N,P+1,s,e);
dom3 = assign1(N+100,P+1,s,e);
summen2 = sum(dom2);
summen3 = sum(dom3);

fig1 = figure;

subplot(2, 2, 1);
bar(1:99, summen);
title('P=1, N=100')

subplot(2, 2, 2);
bar(1:99, summen1);
title('P=1, N=200');

subplot(2, 2, 3);
bar(1:99, summen2);
title('P=rand, N=100')

subplot(2, 2, 4);
bar(1:99, summen3);
title('P=rand, N=200');

han=axes(fig1,'visible','off'); 
    han.Title.Visible='on';
    han.XLabel.Visible='on';
    han.YLabel.Visible='on';
    ylabel(han,'Number of particles per position (y)');
    xlabel(han,'Position (x)');
    title(han,'Random Walk I');
    set(gca, 'fontsize', 18);


%% Probability case ii
N = 100; %Particles

%Probabilities for movement
s = 2/3;
e = 1/6;
w = 1/6; % This variable not needed, just for display

P = 1; %position

dom = assign1(N,P,s,e);
dom1 = assign1(N+100,P,s,e);
summen = sum(dom);
summen1 = sum(dom1);

dom2 = assign1(N,P+1,s,e);
dom3 = assign1(N+100,P+1,s,e);
summen2 = sum(dom2);
summen3 = sum(dom3);

fig2 = figure;

subplot(2, 2, 1);
bar(1:99, summen);
title('P=1, N=100')

subplot(2, 2, 2);
bar(1:99, summen1);
title('P=1, N=200');

subplot(2, 2, 3);
bar(1:99, summen2);
title('P=rand, N=100')

subplot(2, 2, 4);
bar(1:99, summen3);
title('P=rand, N=200');

han=axes(fig2,'visible','off'); 
    han.Title.Visible='on';
    han.XLabel.Visible='on';
    han.YLabel.Visible='on';
    ylabel(han,'Number of particles per position (y)');
    xlabel(han,'Position (x)');
    title(han,'Random Walk II');
    set(gca, 'fontsize', 18);


%% Probability case iii
N = 100; %Particles

%Probabilities for movement
s = 3/5;
e = 1/10;
w = 3/10; % This variable not needed, just for display

P = 1; %position

fig3 = figure;
dom = assign1(N,P,s,e);
dom1 = assign1(N+100,P,s,e);
summen = sum(dom);
summen1 = sum(dom1);

dom2 = assign1(N,P+1,s,e);
dom3 = assign1(N+100,P+1,s,e);
summen2 = sum(dom2);
summen3 = sum(dom3);

subplot(2, 2, 1);
bar(1:99, summen);
title('P=1, N=100')

subplot(2, 2, 2);
bar(1:99, summen1);
title('P=1, N=200');

subplot(2, 2, 3);
bar(1:99, summen2);
title('P=rand, N=100')

subplot(2, 2, 4);
bar(1:99, summen3);
title('P=rand, N=200');

han=axes(fig3,'visible','off'); 
    han.Title.Visible='on';
    han.XLabel.Visible='on';
    han.YLabel.Visible='on';
    ylabel(han,'Number of particles per position (y)');
    xlabel(han,'Position (x)');
    title(han,'Random Walk III');
    set(gca, 'fontsize', 18);


%% Probability case iv
N = 100; %Particles

%Probabilities for movement
s = 3/5;
e = 3/10;
w = 1/10; % This variable not needed, just for display

P = 1; %position

fig4 = figure;

dom = assign1(N,P,s,e);
dom1 = assign1(N+100,P,s,e);
summen = sum(dom);
summen1 = sum(dom1);

dom2 = assign1(N,P+1,s,e);
dom3 = assign1(N+100,P+1,s,e);
summen2 = sum(dom2);
summen3 = sum(dom3);

subplot(2, 2, 1);
bar(1:99, summen);
title('P=1, N=100')

subplot(2, 2, 2);
bar(1:99, summen1);
title('P=1, N=200');

subplot(2, 2, 3);
bar(1:99, summen2);
title('P=rand, N=100')

subplot(2, 2, 4);
bar(1:99, summen3);
title('P=rand, N=200');

han=axes(fig4,'visible','off'); 
    han.Title.Visible='on';
    han.XLabel.Visible='on';
    han.YLabel.Visible='on';
    ylabel(han,'Number of particles per position (y)');
    xlabel(han,'Position (x)');
    title(han,'Random Walk IV');
    set(gca, 'fontsize', 18);

