% Supponiamo che tu abbia già adattato i dati a una funzione iperesponenziale
fitted_modello_iperesponenziale = fit_exp2_N0;

% Ottieni i parametri dalla curva fittata
parametri = coeffvalues(fitted_modello_iperesponenziale);

% Estrai i parametri specifici (dipende dalla tua funzione di fitting)
a1 = parametri(1);
b1 = parametri(2);
a2 = parametri(3);
b2 = parametri(4);

v=(a1/b1)+(a2/b2)









