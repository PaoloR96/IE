clear all 
close all 
clc 
load interarrivalsNC.txt
[yCDF,t]=cdfcalc(interarrivalsNC);
empTTF = yCDF(2:size(yCDF,1));
empREL = 1 - empTTF;
figure()
plot(t, empTTF, '-*b',t,empREL, '-+r');
xlabempRELel("Time(s)");
ylabel("p");
legend('empTTF','empREL');
