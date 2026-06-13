Proceso num_par
	Definir numeros, i, n Como Entero;
    Dimension numeros[7];
	escribir"PROPOSITO: escribir 7 numeros y contar la cantidad de numeros pares";
	n<-0;
	escribir "dame tus numeros:" ;
    Para i <- 0 Hasta 6 Hacer
		leer numeros[i];
		si numeros[i]%2==0 entonces
			n<-n+1;
		FinSi
    FinPara
	escribir "al contar los numeros pares, la cantidad de numeros pares son :", n;
FinProceso
