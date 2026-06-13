Proceso num_men
	definir numeros, n, menor Como Entero;
	dimensionar numeros[5];
	escribir"PROPOSITO: encontrar el numero menor";
	escribir "dame el numero maximo que vas a usar: ";
	leer menor;
	para n<-0 hasta 4 Hacer
		escribir "dame un numero: ";
		leer numeros[n];
		si numeros[n]<menor Entonces
			menor<-numeros[n];
		SiNo
			menor<-menor;
		FinSi
	FinPara
	escribir "tu numero menor es: ", menor;
FinProceso

