Proceso sum_5
	Definir numeros, n, total Como Entero;
	Dimension numeros[5];
	escribir"PROPOSITO: sumar todos los numeros";
	total<-0;
	Para n <- 0 Hasta 4 Hacer
		Escribir "Digite un numero: ";
		Leer numeros[n];
		total<-total+numeros[n];
	FinPara
	escribir "el total de la suma es: ", total;
FinProceso
