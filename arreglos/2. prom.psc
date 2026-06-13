Proceso prom
	Definir numeros, i, total Como Entero;
	Dimension numeros[5];
	escribir"PROPOSITO: escribir y sacar el promedio a 5 numeros";
	total<-0;
    Para i <- 0 Hasta 4 Hacer
        Escribir "Digite un numero para sacar un promedio: ";
        Leer numeros[i];
		total<-total+numeros[i];
    FinPara
	Escribir "Promedio: ",total/5;
FinProceso
