1) Creare un account locale ed impostarlo senza password
2) Estrarre la cartella Release da qualche parte
3) Prendere il file lunch_nbody_collegamento e copiarlo nella cartella di startup. per farlo:
	-premere win+R
	-digitare "shell:startup"
	-incollare il file lunch_nbody_collegamento all'interno
4) Controllare che nelle cartelle Osservazioni/1   Osservazioni/2   Osservazioni/3 non siano
   presenti precedenti catture. (nel caso affermativo, ripulire tutte le cartelle)
5) controllare il file count.txt per verificare che il valore sia 0
6) controllare il file SIM.txt per verificare che sia impostata ad 1
7) controllare il file NBODIES.txt per verificare che sia impostato il valore iniziale (io uso 50000)
8) Aprire il file lunch_nbody.bat ed editare il numero di iterazioni (di default è imostato a 30)
8) Riavviare il computer per iniziare l'esecuzione

N.B  I bodys sarano 10* ad ogni simulazione (es: 50000 500000 5000000)