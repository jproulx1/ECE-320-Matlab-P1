%Barker Code Length 3
figure (1)
nb3=0:2;
b3=[1 1 -1];
stem(nb3,b3)
title('Barker Length 3')
%xlabel('n')
%ylabel('b3[n]')
axis([0 15 -3 3]);



%Barker Code Length 7 
figure (2)
nb7=0:6;
b7=[1 1 -1 -1 1 -1 -1];
stem(nb7,b7)
title('Barker Length 7')
%xlabel('Time')
%ylabel('b7[n]')
axis([0 15 -3 3]);


%Barker Code Length 13
figure (3)
nb13=0:12;
b13=[1 1 -1 -1 1 -1 -1 1 1 1 -1 -1 1];
stem(nb13,b13)
title('Barker Length 13')
%xlabel('Time')
%ylabel('b13[n]')


%h_MF[n] for Barker length 3
figure (4)
negnb3=fliplr(b3)
nb3=0:2;
stem(nb3,negnb3)
xlabel=('Time')
ylabel=('b[-n]')
title('h_{MF}[n]')
axis([0 15 -3 3])

%h_MF[n] for Barker length 7
figure (5)
negnb7=fliplr(b7)
nb7=0:6;
stem(nb7,negnb7)
xlabel=('Time')
ylabel=('b[-n]')
title('h_{MF}[n]')

%h_MF[n] for Barker length 13
figure (6)
negnb13=fliplr(b13)
nb3=0:12;
stem(nb13,negnb13)
xlabel=('Time')
ylabel=('b[-n]')
title('h_{MF}[n]')

%Output for Causal Mathched Filter (3)
figure(7)
nb3=0:2;
y3=conv(b3,negnb3);
stem(y3)
%xlabel=('Time')
%ylabel=('')
%title('h_{MF}[n]')

%Output for Causal Mathched Filter (7)
figure(8)
nb7=0:6;
y7=conv(b7,negnb7);
stem(y7)
xlabel=('Time')
ylabel=('')
title('h_{MF}[n]')

%Output for Causal Mathched Filter (13)
figure(9)
nb13=0:12;
y13=conv(b13,negnb13);
stem(y13)
xlabel=('Time')
ylabel=('')
title('h_{MF}[n]')


