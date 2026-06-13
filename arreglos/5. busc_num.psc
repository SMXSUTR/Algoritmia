Proceso busc_num
	Definir numeros, n, num_busc Como Entero;
    Dimension numeros[5];
	escribir"PROPOSITO: escribir 5 numeros y buscar numero por posicion";
    Para n <- 0 Hasta 4 Hacer
        Escribir "Digite un numero: ";
        Leer numeros[n];
    FinPara
	escribir "Dime la posicion del numero que quieres buscar? (desde el 1 empieza)";
	leer n;
	n<-n-1;
	escribir "tu numero es: ", numeros[n];
FinProceso
