Proceso tienda
	definir stock, i, j, can_baj_stock, stockn Como Entero;
	definir productos, prod_bajos Como Caracter;
	dimension stock[4];
	dimension productos[4];
	dimension prod_bajos[4];
	dimension stockn[4];
	escribir"PROPOSITO: definir el stock, productos, su cantidad en stock y cuales son los productos bajos de stock";
	j<-0;
	escribir "dime a partir de que numero esta bajo el stock de tus productos";
	leer can_baj_stock;
	para i<-0 hasta 3 Hacer
		escribir "dame el producto";
		leer productos[i];
		escribir "dame su cantidad de stock";
		leer stock[i];
		si stock[i]<=can_baj_stock Entonces
			prod_bajos[j] <- productos[i];
			stockn[j]<-stock[i];
            j <- j + 1;
		FinSi
	FinPara
	para i<-0 hasta 3 Hacer
		escribir "tu producto es: ",productos[i]," y su cantidad en stock es de ", stock[i];
	FinPara
	escribir "tus productos bajos en stock son ";
	para i<-0 hasta j-1 Hacer
		escribir "Del producto: ",prod_bajos[i],". Su stock esta en:", stockn[i];
	FinPara
FinProceso
