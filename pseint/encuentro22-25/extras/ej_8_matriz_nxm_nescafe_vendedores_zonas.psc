Algoritmo ej_8_matriz_nxm_nescafe_vendedores_zonas
	Definir nescafe, vendedores, zonas Como Entero
	
	//Crear matriz nescafe
	vendedores = 4
	zonas = 5
	Dimension nescafe[vendedores,zonas]
	
	//Ingresar datos para cada vendedores
	ingresarVentas(nescafe, vendedores, zonas)
	
	//Menu
	menu(nescafe, vendedores, zonas)
	
FinAlgoritmo

SubProceso ingresarVentas (nescafe, vendedores, zonas)
	Definir i, j Como Entero
	Definir zona Como Caracter
	
	Para i = 0 Hasta vendedores - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta zonas - 1 Con Paso 1 Hacer
			
			Segun j Hacer
				0:
					zona = "Norte"
				1:
					zona = "Sur"
				2:
					zona = "Este"
				3:
					zona = "Oeste"
				4:
					zona = "Centro"
			FinSegun
			
			Hacer
				Escribir "Vendedor #", i + 1, ": Indica la cantidad de ventas en zona ", zona, ":" Sin Saltar
				leer nescafe[i,j]
				
				Si nescafe[i,j] < 0 Entonces
					Escribir "No puedes asignar un valor negativo."
					Escribir ""
				FinSi
			Mientras Que nescafe[i,j] < 0
			
		FinPara
		
		Escribir ""
		
	FinPara
	
FinSubProceso

SubProceso menu (nescafe, vendedores, zonas)
	Definir opcionMenu Como Caracter
	Definir mostrarMenu Como Logico
	
	//Variables
	mostrarMenu = Verdadero
	
	Hacer
		Escribir ""
		Escribir "Menu opciones:"
		Escribir "----------------------------------"
		Escribir "A. Total de ventas de una zona"
		Escribir "B. Total de ventas de un vendedor"
		Escribir "C. Total de ventas"
		Escribir "D. Salir"
		Escribir "----------------------------------"
		
		Escribir "Indica la opción:" Sin Saltar
		Leer opcionMenu
		
		Segun Minusculas(opcionMenu) Hacer
			"a":
				menuVentasZona(nescafe, vendedores)
			"b":
				menuVentasVendedor(nescafe, zonas)
			"c":
				totalVentas(nescafe, vendedores, zonas)
			"d":
				salir(mostrarMenu)
			De Otro Modo:
				Escribir "Opción no válida."
		FinSegun
	Mientras Que mostrarMenu
	
FinSubProceso

SubProceso menuVentasZona (nescafe, vendedores)
	Definir opcionMenu, continuar Como Caracter
	Definir mostrarMenu Como Logico
	
	//Variables
	mostrarMenu = Verdadero
	
	Hacer
		Escribir ""
		Escribir "Elige una zona:"
		Escribir "----------------------------------"
		Escribir "1. Norte"
		Escribir "2. Sur"
		Escribir "3. Este"
		Escribir "4. Oeste"
		Escribir "5. Centro"
		Escribir "6. Volver al menu principal"
		Escribir "----------------------------------"
		
		Escribir "Indica la zona:" Sin Saltar
		Leer opcionMenu
		
		Segun opcionMenu Hacer
			"1":
				totalVentasZona(nescafe, vendedores, 0, "Norte")
			"2":
				totalVentasZona(nescafe, vendedores, 1, "Sur")
			"3":
				totalVentasZona(nescafe, vendedores, 2, "Este")
			"4":
				totalVentasZona(nescafe, vendedores, 3, "Oeste")
			"5":
				totalVentasZona(nescafe, vendedores, 4, "Centro")
			"6":
				mostrarMenu = Falso
			De Otro Modo:
				Escribir "Opción no válida."
		FinSegun
		
		Si mostrarMenu Entonces
			Escribir ""
			Escribir "Elegir otra zona?" Sin Saltar
			Leer continuar
			
			Si Minusculas(continuar) <> "si" Entonces
				mostrarMenu = Falso
			FinSi
		FinSi
		
	Mientras Que mostrarMenu
	
FinSubProceso

SubProceso totalVentasZona (nescafe, vendedores, zona, nombreZona)
	Definir i, j, total Como Entero
	
	total = 0
	
	Para i = 0 Hasta vendedores - 1 Con Paso 1 Hacer
		total = total + nescafe[i, zona]
	FinPara
	
	Escribir "El total de ventas en zona ", nombreZona, " es igual a: ", total
	
FinSubProceso

SubProceso menuVentasVendedor (nescafe, zonas)
	Definir opcionMenu, continuar Como Caracter
	Definir mostrarMenu Como Logico
	
	//Variables
	mostrarMenu = Verdadero
	
	Hacer
		Escribir ""
		Escribir "Elige un vendedor:"
		Escribir "----------------------------------"
		Escribir "1. Vendedor #1"
		Escribir "2. Vendedor #2"
		Escribir "3. Vendedor #3"
		Escribir "4. Vendedor #4"
		Escribir "5. Volver al menu principal"
		Escribir "----------------------------------"
		
		Escribir "Indica el vendedor:" Sin Saltar
		Leer opcionMenu
		
		Segun opcionMenu Hacer
			"1":
				totalVentasVendedor(nescafe, zonas, 0, "#1")
			"2":
				totalVentasVendedor(nescafe, zonas, 1, "#2")
			"3":
				totalVentasVendedor(nescafe, zonas, 2, "#3")
			"4":
				totalVentasVendedor(nescafe, zonas, 3, "#4")
			"5":
				mostrarMenu = Falso
			De Otro Modo:
				Escribir "Opción no válida."
		FinSegun
		
		Si mostrarMenu Entonces
			Escribir ""
			Escribir "Elegir otra vendedor?" Sin Saltar
			Leer continuar
			
			Si Minusculas(continuar) <> "si" Entonces
				mostrarMenu = Falso
			FinSi
		FinSi
		
	Mientras Que mostrarMenu
	
FinSubProceso

SubProceso totalVentasVendedor (nescafe, zonas, vendedor, nombreVendedor)
	Definir i, j, total Como Entero
	
	total = 0
	
	Para i = 0 Hasta zonas - 1 Con Paso 1 Hacer
		total = total + nescafe[vendedor, i]
	FinPara
	
	Escribir "El total de ventas del vendedor ", nombreVendedor, " es igual a: ", total
	
FinSubProceso

SubProceso totalVentas(nescafe, vendedores, zonas)
	Definir i, j, total Como Entero
	
	//Variables
	total = 0
	
	Para i = 0 Hasta vendedores - 1 Con Paso 1 Hacer
		
		Para j = 0 Hasta zonas - 1 Con Paso 1 Hacer
			total = total + nescafe[i,j]
		FinPara
		
	FinPara
	
	Escribir "El total de ventas de todos los representantes es igual a: ", total
	
FinSubProceso

SubProceso salir(mostrarMenu Por Referencia)
	mostrarMenu = Falso
	Escribir "Hasta pronto!"
FinSubProceso
	