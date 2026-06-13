Proceso num_may
	definir numeros, n, mayor Como Entero;
	dimensionar numeros[5];
	escribir"PROPOSITO: encontrar el numero mayor";
	mayor<-0;
	para n<-0 hasta 4 Hacer
		escribir "dame un numero: ";
		leer numeros[n];
		si numeros[n]>mayor Entonces
			mayor<-numeros[n];
		FinSi
	FinPara
	escribir "tu numero mayor es: ", mayor;
FinProceso
