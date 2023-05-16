Algoritmo letra_entre_M_y_T
	Definir letra Como Caracter
	
	//Solicitar letra
	Escribir "Ingresa una letra:"
	Leer letra
	
	//Verificar si se encuentra entre la M y la T (inclusives)
	entreMyT(letra)
	
FinAlgoritmo

SubProceso entreMyT (letra)
	Definir siONo Como Caracter
	
	siONo = "NO"
	
	Si letra >= "M" Y letra <= "T" Entonces
		siONo = "SI"
	FinSi
	
	//Mostrar resultado
	Escribir "La letra ", letra, " ", siONo, " se encuentra entre la M y la T"
	
FinSubProceso
