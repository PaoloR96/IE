%test KS exp1
[H1, P1, K1] = kstest2(empREL, fit_exp2_N0(t));

%test KS exp2
[H2, P2, K2] = kstest2(empREL, fit_exp2(t));


%test KS power2
[H3, P3, K3] = kstest2(empREL, fit_power2(t));


%test KS sigmo
[H4, P4, K4] = kstest2(empREL, fit_sigmo(t));

%test KS rational
[H5, P5, K5] = kstest2(empREL, fit_rat(t));
%%%%Per N0
%[H1, P1, K1] = kstest2(empREL, fit_exp1_N0(t));
%[H2, P2, K2] = kstest2(empREL, fit_exp2_N0(t));
%[H3, P3, K3] = kstest2(empREL, fit_rat_N0(t));
%%%Per N8
%[H1, P1, K1] = kstest2(empREL, fit_exp1_N8(t));
%[H2, P2, K2] = kstest2(empREL, fit_exp2_N8(t));
%[H3, P3, K3] = kstest2(empREL, fit_power_N8(t));
%[H4, P4, K4] = kstest2(empREL, fit_sigmo_N8(t));


%%%Per NC
%[H1, P1, K1] = kstest2(empREL, fit_exp1_NC(t));
%[H2, P2, K2] = kstest2(empREL, fit_exp2_NC(t));
%[H3, P3, K3] = kstest2(empREL, fit_power_NC(t));
%[H4, P4, K4] = kstest2(empREL, fit_rat_NC(t));
%[H5, P5, K5] = kstest2(empREL, fit_sigmo_NC(t));

