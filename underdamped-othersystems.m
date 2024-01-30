% define parameters

zeta=0.5; %this system is underdamped as zeta<1
%undamped when zeta+0
%overdamped zeta>1
%criticaldamped zeta=1

Wn=20;
num=[0 0 4];
dem=[1 2*zeta*Wn Wn^2];
G=tf(num,dem);
step(G);
grid on;
xlim([0 20]);
ylim([0 4]);
