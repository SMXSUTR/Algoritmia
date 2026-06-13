Proceso once
	definir i, j, edades, edadM, contador, mayor, total como entero;
	definir nombres, nombM, yon1, yon2, yon3, yon4, busapren Como Caracter;
	definir encontrado Como Logico;
	dimension nombres[31];
	dimension edades[31];
	dimension nombM[31];
	escribir "OBJETIVO: Dame los 29 alumnos que tienes";
	total<-29;
	edadM<-0;
	contador<-0;
	j<-0;
	mayor<-0;
	para i<-0 hasta 28 Hacer
		escribir "Dame su nombre: ";
		leer nombres[i];
		escribir "Dame la edad de: ", nombres[i];
		leer edades[i];
	FinPara
	escribir "vas a agregar un nuevo aprendiz al comienzo? Y/N";
	leer yon1;
	escribir "vas a agregar un nuevo aprendiz al final? Y/N";
	leer yon2;
	si (yon1="y" o yon1="Y") y (yon2="y" o yon2="Y") Entonces
		total<-total+2;
		escribir "Para el aprendiz al comienzo dame su nombre y luego su edad: ";
		Para i<-28 Hasta 0 Con Paso -1 hacer
			nombres[i+1] <- nombres[i];
			edades[i+1] <- edades[i];
		FinPara
		leer nombres[0];
		leer edades[0];
		escribir "Para el aprendiz al final dame su nombre y luego su edad: ";
		leer nombres[30];
		leer edades[30];
	sino 
		si (yon1="y" o yon1="Y") y (yon2="n" o yon2="N") Entonces
			total<-total+1;
			escribir "Para el aprendiz al comienzo dame su nombre y luego su edad: ";
			Para i<-28 Hasta 0 Con Paso -1 hacer
				nombres[i+1] <- nombres[i];
				edades[i+1] <- edades[i];
			FinPara
			leer nombres[0];
			leer edades[0];
		FinSi
    FinSi
	si (yon1="n" o yon1="N") y (yon2="y" o yon2="Y") Entonces
		total<-total+1;
		escribir "Para el aprendiz al final dame su nombre y luego su edad: ";
		leer nombres[29];
		leer edades[29];
	sino 
		si (yon1="n" o yon1="N") y (yon2="n" o yon2="N") Entonces
			escribir "okey, no agregaste otro alumno, estos son los siguientes datos: ";
		FinSi
    FinSi
	escribir "Desea borrar un aprendiz? Y/N";
	leer yon4;
	si yon4="Y" o yon4="y" Entonces
		escribir "Como es el nombre del aprendiz?";
		leer busapren;
		Para i<-0 Hasta total-1 Hacer
			Si nombres[i]=busapren Entonces
				Para j<-i Hasta total-2 Hacer
					nombres[j] <- nombres[j+1];
					edades[j] <- edades[j+1];
				FinPara
				total <- total-1;
			FinSi
		FinPara
	FinSi
	escribir "deseas buscar un aprendiz? Y/N";
	leer yon3;
	si yon3="Y" o yon3="y" Entonces
		escribir "¿como es el nombre del aprendiz?";
		leer busapren;
		encontrado <- Falso;
		para i<-0 hasta total-1 Hacer
			si busapren=nombres[i] Entonces
				escribir "El aprendiz ", nombres[i]," con la edad de ", edades[i]," esta en la posicion ", i;
				encontrado <- Verdadero;
			FinSi
		FinPara
		si encontrado=Falso Entonces
			escribir busapren, " no existe en la base de datos";
		FinSi
	Sino
		escribir "okey, vamos con lo siguiente: ";
	FinSi
	escribir "los registros almacenados del 1 al 10 son: ";
	para i<-0 hasta 9 Hacer
		escribir "aprendiz ",nombres[i], " con ", edades[i], " anos de edad guardado en la pocision ", i+1; 
	FinPara
	escribir "los registros almacenados del 11 al 20 son: ";
	para i<-10 hasta 19 Hacer
		escribir "aprendiz ",nombres[i], " con ", edades[i], " anos de edad guardado en la pocision ", i+1; 
	FinPara
	escribir "los elementos del 10 al 20 son: ";
	para i<-9 hasta 19 Hacer
		escribir "aprendiz: ",nombres[i], ". con: ", edades[i], " anos de edad."; 
	FinPara
	para i<-0 hasta total-1 Hacer
		si (i+1)%2==0 Entonces
			escribir "el numero par: ", i," aprendiz: ",nombres[i], ". con: ", edades[i], " anos de edad."; 
		FinSi
	FinPara
	edadM<-0;
	contador<-0;
	j<-0;
	mayor<-0;
	para i<-0 hasta total-1 Hacer
		si edades[i]=edadM Entonces
			contador<-contador+1;
			nombM[j]<-nombres[i];
			j<-j+1;
		FinSi
		si edades[i]>edadM Entonces
			contador<-1;
			j<-0;
			edadM<-edades[i];
			nombM[j]<-nombres[i];
			j<-j+1;
		FinSi
		si edades[i]=18 Entonces
			mayor<-mayor+1;
		FinSi
	FinPara
	escribir "estos son los siguientes datos: ";
	para i<-0 hasta total-1 Hacer
		escribir "Nombre de aprendiz: ", nombres[i];
		escribir "edad del aprendiz: ", edades[i], " anos";
	FinPara
	escribir "la mayor edad:", edadM;
	si contador=1 Entonces
		escribir "El aprendiz mayor es: ", nombM[0];
	FinSi
	si contador>1 Entonces
		escribir "cantidad de personas con la edad mayor: ", contador;
		para i<-0 hasta contador-1 Hacer
			escribir "Los aprendices que tienen la edad más alta; ", nombM[i];
		FinPara
	FinSi
	escribir "numero de alumnos con 18 anos: ", mayor;
FinProceso
