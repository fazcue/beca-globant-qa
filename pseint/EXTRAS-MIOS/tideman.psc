Algoritmo tideman
	Definir i, ranks Como Entero
	Definir candidate_count, voter_count, MAX Como Entero
	Definir preferences, pairs, pair_count Como Entero
	Definir candidates Como Caracter
	
	//Constantes
	MAX = 9
	
	//Variables
	candidate_count = 3
	voter_count = 3
	pair_count = 0
	
	//Vector candidates
	Dimension candidates[candidate_count]
	
	//Ingresar nombre candidatos
	ingresarCandidatos(candidates, candidate_count)
	
	//Vector ranks
	Dimension ranks[candidate_count]
	
	//Matriz preferences
	Dimension preferences[MAX, MAX]
	
	//Vector pairs
	Dimension pairs[MAX * (MAX - 1) / 2]
	
	//Inicializar preferences
	inicializarMatriz(preferences, candidate_count)
	
	//Imprimir matriz inicial
	imprimirMatriz(preferences, candidate_count)
	
	//Ingresar votos por cada votante
	ingresarVotos(ranks, preferences, candidates, voter_count, candidate_count)
	
	//Imprimir matriz final
	imprimirMatriz(preferences, candidate_count)
	
	//Guardar pares
	add_pairs(candidate_count, pair_count, pairs, preferences)
	
FinAlgoritmo

SubProceso ingresarCandidatos(candidates, candidate_count)
	Definir i Como Entero
	
	Para i = 0 Hasta candidate_count - 1 Hacer
		Escribir "Nombre candidato #", i + 1, ": " Sin Saltar
		Leer candidates[i]
	FinPara
	
FinSubProceso

SubProceso inicializarMatriz(matriz, MAX)
	Definir i, j Como Entero
	
	Para i = 0 Hasta MAX - 1 Hacer
		
		Para j = 0 Hasta MAX - 1 Hacer
			matriz[i,j] = 0
		FinPara
		
	FinPara
	
FinSubProceso

SubProceso imprimirMatriz(matriz, MAX)
	Definir i, j Como Entero
	
	Escribir "    A B C" 
	
	Para i = 0 Hasta MAX - 1 Hacer
		Segun i Hacer
			0:
				Escribir "A [ " Sin Saltar
			1:
				Escribir "B [ " Sin Saltar
			2:
				Escribir "C [ " Sin Saltar
		FinSegun
		Para j = 0 Hasta MAX - 1 Hacer
			Escribir  matriz[i,j], " " Sin Saltar
		FinPara
		Escribir "]"
	FinPara
	
FinSubProceso

SubProceso ingresarVotos(ranks, preferences, candidates, voter_count, candidate_count)
	Definir i, j Como Entero
	Definir name Como Caracter
	
	Para i = 0 Hasta voter_count - 1 Hacer
		
		Escribir "Votante #", i + 1, ""
		Para j = 0 Hasta candidate_count - 1 Hacer
			Escribir "Ranks ", j + 1 Sin Saltar
			Leer name
			
			Si (NO vote(j, name, ranks, candidates, candidate_count)) Entonces
				Escribir "Voto invalido..."
			FinSi
		FinPara
		
		//Guardar votacion
		record_preferences(ranks, preferences, candidate_count, voter_count)
		
		Escribir ""
		
	FinPara
	
FinSubProceso

Funcion registrado <- vote(rank, name, ranks, candidates, candidate_count)
	Definir i Como Entero
	Definir registrado Como Logico
	
	registrado = Falso
	
	Para i = 0 Hasta candidate_count - 1 Hacer
		
		Si (name == candidates[i]) Entonces
			
			ranks[rank] = i
			registrado = Verdadero
			
		FinSi
		
	FinPara
	
FinFuncion

SubProceso record_preferences(ranks, preferences, candidate_count, voter_count)
	Definir i, j Como Entero
	
	Para i = 0 Hasta candidate_count - 1 - 1 Hacer
		
		Para j = i+1 Hasta candidate_count - 1 Hacer
			preferences[ranks[i], ranks[j]]= preferences[ranks[i], ranks[j]] + 1
		FinPara
		
	FinPara
FinSubProceso

SubProceso add_pairs(candidate_count, pair_count Por Referencia, pairs, preferences)
	Definir i, j Como Entero
	
	Para i = 0 Hasta candidate_count - 1 Hacer
		
		Para j = 0 Hasta candidate_count - 1 Hacer
			
			Si i <> j Entonces
				
				Si preferences[i,j] > preferences[j,i] Entonces
					Escribir "Se prefiere i-j: ", i,j, " sobre j-i: ", j,i, ". Dif: ", preferences[i,j] - preferences[j,i] 
				FinSi
				
			FinSi
			
		FinPara

	FinPara
	
FinSubProceso
	