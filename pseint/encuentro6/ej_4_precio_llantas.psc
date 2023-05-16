Algoritmo precio_llantas
	Definir total, valorUnitario, cantidad Como Entero
	
	Escribir "Ingresa una cantidad de llantas a comprar:"
	Leer cantidad
	
	Si cantidad < 5 Entonces
		valorUnitario = 3000
	SiNo
		Si cantidad >= 5 Y cantidad <= 10 Entonces
			valorUnitario = 2500
		SiNo
			valorUnitario = 2000
		FinSi
	FinSi
	
	total = valorUnitario * cantidad
	
	Escribir "El precio unitario por llanta es: ", valorUnitario, " y el total asciende a: ", total
	
FinAlgoritmo
