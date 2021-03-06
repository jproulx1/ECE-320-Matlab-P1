%Barker Code Length 3
figure (1)
nb3=0:2;
b3=[1 1 -1];
nexttile
stem(nb3,b3)
title('Barker Length 3')
xlabel('Time')
ylabel('b3[n]')
axis([0 15 -3 3]);

%Barker Code Length 7 
nb7=0:6;
b7=[1 1 1 -1 -1 1 -1];
nexttile
stem(nb7,b7)
title('Barker Length 7')
xlabel('Time')
ylabel('b7[n]')
axis([0 15 -3 3]);
%Barker Code Length 13
nb13=0:12;
b13=[1 1 1 1 1 -1 -1 1 1 -1 1 -1 1];
nexttile
stem(nb13,b13)
title('Barker Length 13')
xlabel('Time')
ylabel('b13[n]')


%h_MF[n] for Barker length 3
figure (2)
negnb3=fliplr(b3)
nb3=0:2;
nexttile
stem(nb3,negnb3)
xlabel('Time')
ylabel('b[-n]')
title('h_{MF}[n]')
axis([0 15 -3 3])

%h_MF[n] for Barker length 7

negnb7=fliplr(b7)
nb7=0:6;
nexttile
stem(nb7,negnb7)
xlabel('Time')
ylabel('b[-n]')
title('h_{MF}[n]')

%h_MF[n] for Barker length 13

negnb13=fliplr(b13)
nb3=0:12;
nexttile
stem(nb13,negnb13)
xlabel('Time')
ylabel('b[-n]')
title('h_{MF}[n]')

%Output for Causal Mathched Filter (3)
figure(3)
nb3=0:2;
y3=conv(b3,negnb3);
nexttile
stem(y3)
xlabel('Time')
ylabel('')
title('h_{MF}[n]')

%Output for Causal Mathched Filter (7)

nb7=0:6;
y7=conv(b7,negnb7);
nexttile
stem(y7)
xlabel('Time')
ylabel('')
title('h_{MF}[n]')

%Output for Causal Mathched Filter (13)

nb13=0:12;
y13=conv(b13,negnb13);
nexttile
stem(y13)
xlabel('Time')
ylabel('')
title('h_{MF}[n]')


%3.3 d

figure(4)
d7=[1 -1 1 -1 -1 1 -1]
nexttile
stem(d7)
xlabel('Time')
title('s[n]')

negd7=fliplr(d7);
yd7=conv(d7,negd7)
nexttile
stem(yd7)
xlabel('Time')
title('h_{MF}[n]')


%3.3 e
figure(5)
josh=13
testr=[zeros(1,josh) b13]
nexttile
stem(testr)
xlabel('Time')
title('b13[n-k]')

negtestr=fliplr(testr)
y33=conv(testr,negtestr)
nexttile
stem(y33)
xlabel('Time')
title('h_{MF}[n]')

figure(6)
nexttile
plot(noisyr4)
xlabel('Time')
title('noisyr4')

nois=conv(noisyr4,negtestr);
nexttile
plot(nois)
xlabel('Time')
title('h_{MF}[n]')


