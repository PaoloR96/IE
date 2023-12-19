% Supponiamo che tu abbia già adattato i dati a una funzione iperesponenziale
fitted_modello_iperesponenziale = fit_exp2;

% Ottieni i parametri dalla curva fittata
parametri = coeffvalues(fitted_modello_iperesponenziale);

% Estrai i parametri specifici (dipende dalla tua funzione di fitting)
a1 = parametri(1);
b1 = parametri(2);
a2 = parametri(3);
b2 = parametri(4);

v=(a1/b1)+(a2/b2)


% Supponiamo che tu abbia già adattato i dati a una funzione iperesponenziale
fitted_modello_iperesponenziale = fit_exp2_1;

% Ottieni i parametri dalla curva fittata
parametri = coeffvalues(fitted_modello_iperesponenziale);

% Estrai i parametri specifici (dipende dalla tua funzione di fitting)
a3 = parametri(1);
b3 = parametri(2);
a4 = parametri(3);
b4 = parametri(4);

v1=(a3/b3)+(a4/b4)






