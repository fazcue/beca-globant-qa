Algoritmo desayuno
	Definir drink, type, withMilk Como Caracter
	
	Escribir "Quieres cafe o te?"
	Leer drink
	
	Si Minusculas(drink) == "cafe" Entonces
		
		Escribir "Solo o cortado?"
		Leer type
		
		Si Minusculas(type) == "cortado" Entonces
			
			Escribir "Lo prefieres con leche vegetal? (Si o No)"
			Leer withMilk
			
			Si Minusculas(withMilk) == "si" Entonces
				Escribir "Aqui tienes el cafe, cortado y con leche vegetal."
			SiNo
				Escribir "Aqui tienes el cafe cortado."
			FinSi
			
		SiNo
			Escribir "Aqui tienes el cafe."
		FinSi
		
	SiNo
		Escribir "Aqui tienes el Te."
	FinSi
	
FinAlgoritmo
