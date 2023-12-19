%test KS exp1
[H1, P1, K1] = kstest2(empREL, fit_exp1(t));

%test KS exp2
[H2, P2, K2] = kstest2(empREL, fit_exp2(t));


%test KS power2
[H3, P3, K3] = kstest2(empREL, fit_power2(t));


%test KS sigmo
[H4, P4, K4] = kstest2(empREL, fit_sigmo(t));

%test KS rational
[H5, P5, K5] = kstest2(empREL, fit_rat(t));

