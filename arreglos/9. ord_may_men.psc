Proceso ord_may_men
    Definir numeros,n,m,guar Como Entero;
    Dimension numeros[5];
	escribir"PROPOSITO: ordenar los numeros de menor a mayor";
    Para n<-0 Hasta 4 Hacer
		Escribir "digita un numero";
        Leer numeros[n];
    FinPara
    Para n<-0 Hasta 3 Hacer
        Para m<-n+1 Hasta 4 Hacer
            Si numeros[n]>numeros[m] Entonces
                guar<-numeros[n];
                numeros[n]<-numeros[m];
                numeros[m]<-guar;
            FinSi
        FinPara
    FinPara
    Para n<-0 Hasta 4 Hacer
        Escribir n+1," numero: ",  numeros[n];
    FinPara
FinProceso