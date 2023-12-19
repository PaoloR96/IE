clear all 
close all 
clc 
load interarrivalsMcry.txt
[yCDF,t]=cdfcalc(interarrivalsMcry);
empTTF = yCDF(2:size(yCDF,1));
empREL = 1 - empTTF;
figure()
plot(t, empTTF, '-*b',t,empREL, '-+r');
xlabempRELel("Time(s)");
ylabel("p");
legend('empTTF','empREL');
