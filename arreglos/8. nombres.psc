Proceso nombres
    Definir numeros Como caracter;
	definir n Como Entero;
    Dimension numeros[5];
	escribir"PROPOSITO: escribir 5 nombres y mostrarlos";
    Para n <- 0 Hasta 4 Hacer
        Escribir "Dime un nombre: ";
        Leer numeros[n];
    FinPara
    Escribir "Los nombres ingresados son:";
    Para n <- 0 Hasta 4 Hacer
        Escribir numeros[n];
    FinPara
FinProceso