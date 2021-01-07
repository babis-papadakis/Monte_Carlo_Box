%CP_2020
%Papadakis Charalampos
%AEM:14929
%2nd Set,Ex B J. Kioseoglou


clear;
%variables
time=100000;
particles=700;

%inputs
surr_name = input("Δωστε το μικρο σας ονομα","s");
last_name = input("Δωστε το επιθετο σας","s");

tic %time start
%ascii transform
S = double(surr_name);
L = double(last_name);

%sum ascii array
ON = sum(S);
PE = sum(L);

%find max & Ratio
Max = max(ON,PE);
Min = min(ON,PE);

Ratio = Min/Max;

%N1,N2

N2 = particles/(Ratio+1);

%simulation
C=zeros(1,time);
T=0; 
D=zeros(1,time);
for i=1:time
    random_int= rand; %random change number
    if N2/particles<random_int
        N2=N2+1;
    else
        N2=N2-1;
    end
    T=particles -(particles/2)*(1+exp(-((2*i)/particles)));
    D(i)=T;
    C(i)=N2;
end
W=[D ; C];
%Plots Particles in the second zone
figure
plot(1:time,W);    
xlabel('time (sec)') 
ylabel('Number of particles in Zone B') 
title('Distribution Simulation')

toc %time end
