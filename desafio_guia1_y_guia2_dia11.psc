Algoritmo desafio_guia1_y_guia2_dia11
	
	Definir usuario , contrasena, respuesta , ingresarOnoIngresar, salir Como Caracter
	Definir login Como Logico
	Definir contador, cantidadBotellas , pesoBotella , dineroAIngresar, saldo Como Entero
	Escribir "Decime el usuario"
	Leer usuario
	Escribir "escribe la contraseña, solo tendras 3 intentos"
	Leer contrasena
	contador = 1
	login = Falso
	dineroAIngresar = 0
	saldo = 0
	salir = "no"
	
	si usuario = "Albus_D" Entonces
		Mientras  login = falso  y contador < 3 Hacer
		
			si contrasena = "caramelosDeLimon"
				login = Verdadero
				
			SiNo
				Escribir "Contaseña no valida, escribela nuevamente"
				Leer contrasena
				contador = contador + 1
			FinSi
			
		FinMientras
	SiNo
		Escribir "usuario invalido"
	FinSi
	
	Escribir " "
	si login = Verdadero 
		Hacer 
			Escribir "Que accion vamos a realizar?"
			Escribir "ingresar botellas"
			Escribir "consultar saldo"
			Escribir "salir"
			Leer respuesta
			si respuesta = "ingresar botellas"
				Escribir "Cuantas botellas vamos a ingresar?"
				Leer  cantidadBotellas
				Para cantidadBotellas <- 1 hasta cantidadBotellas Hacer
					pesoBotella = aleatorio(100 , 3000)
					si pesoBotella <= 500 Entonces
						dineroAIngresar	= dineroAIngresar + 50
					SiNo
						si pesoBotella >500 y pesoBotella <= 1500
							dineroAIngresar = dineroAIngresar + 125
						SiNo
							si pesoBotella > 1501 
								dineroAIngresar = dineroAIngresar + 200
							FinSi
						FinSi
						
					FinSi
				FinPara
				Escribir "La cantidad de dinero a ingresar es: $ " dineroAIngresar
				Escribir "Quiero ingresarlo a su cuenta? s/n" 
				Leer ingresarOnoIngresar
				si ingresarOnoIngresar = "s"
					saldo = saldo + dineroAIngresar
					Escribir "Su saldo es: $", saldo
					Escribir " "
				sino
					Escribir "Devolviendo Material "
					Escribir " "
				FinSi
			SiNo
				si respuesta = "consultar saldo"
					Escribir "Su saldo es: $", saldo
					Escribir " "
				SiNo
					si respuesta = "salir"
						salir = "si"
					FinSi
				FinSi
			FinSi
			
			
			
			
			
		Mientras que salir = "no"
		
	FinSi
	
	
	
	Escribir "Fin"
	
	
FinAlgoritmo
