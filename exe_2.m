%CP_2020
%Papadakis Charalampos
%AEM:14929
%2nd Set,Ex A J. Kioseoglou

clear; %clears variables
tic
particles= 130000; %particles
time=100000;  %exp time
N1=particles;    %starting zone
N2=0;    %second zone
T=0;    %Theoretical value of particles in Zone B
C=zeros(1,time);
D=zeros(1,time);
for i=1:time
    random_int= rand; %random change number
    if N2/particles<random_int
        N2=N2+1;
    else
        N2=N2-1;
    end
    T=particles-(particles/2)*(1+exp(-((2*i)/particles)));
    D(i)=T;
    C(i)=N2;
end
    W=[D ; C];

%Plots Particles in the second zone both exp-theory
figure
plot(1:time,W);    
xlabel('time (sec)') 
ylabel('Number of particles in Zone B') 
title('Distribution Simulation')
toc

