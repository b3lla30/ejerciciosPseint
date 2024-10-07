Algoritmo AgenciaViajes
	Definir Destino, Diashospejade Como Entero
	Definir  CostoTotal, descuento Como Real
	Definir Continuar Como Caracter
	Continuar <- "Si"
	Mientras Continuar = "Si"
		//Menu de Seleccion
		Escribir "Bienvenidos a nuestra agencia de viajes."
		Escribir "Por favor, seleccione su destino:"
		Escribir "1. Playa ($500.000 por dia)"
		Escribir "2. Montaña ($400.000 por dia)"
		Escribir "3. Ciudad ($300.000 por dia)"
		Leer Destino
		
		//Validad Opcion 
		Mientras Destino <> 1 Y Destino <> 2 Y Destino <> 3
			Escribir "Opcion invalida. Por favor ingrese 1,2 o 3"
			Leer Destino
		FinMientras
		
		
		// Solicitar dias de hospedaje.
		Escribir  "Ingresa la cantidad de dias que deseas quedarte:"
		leer Diashospejade
		Mientras  Diashospejade <= 0 Hacer
			Escribir "Por favor ingrese un numero de dias valido. (Mayor a 0):"
			Leer Diashospejade
		FinMientras
		Segun Destino Hacer
			1://Destino Playa
				CostoTotal <- Diashospejade * 500000
				Escribir  "Destino seleccionado: Playa."
			2:// Montaña
				CostoTotal <- Diashospejade * 400000
				Escribir  "Destino seleccionado: Montaña."
			3:// Ciudad
				CostoTotal <- Diashospejade * 300000
				Escribir  "Destino seleccionado: Ciudad."
			De Otro Modo:
				Escribir "Opcion no valida. Por favor seleccione un destino valido."
			
		FinSegun
		// Descuentos segun los dias de hospedaje
		Si Diashospejade >= 7 Entonces
			descuento <- CostoTotal * 0.15
			CostoTotal <- CostoTotal - descuento
			Escribir "Por el tiempo de hospedaje se ha aplicado un descuento del 15%"
		Sino 
			Si Diashospejade >= 3 Entonces
				descuento <- CostoTotal * 0.10
				CostoTotal <- CostoTotal - descuento
				Escribir "Por el tiempo de hospedaje se ha aplicado un descuento del 10%"
			SiNo
				descuento <- 0
				Escribir  "Lo lamentamos, para ese tiempo de hospedaje no se aplican descuentos."
			FinSi
		FinSi
		// Mostar el costo total con o sin descuentos.
		Escribir  "El costo total de tu viaje es: $", CostoTotal
		
		Escribir  "¿Desea realizar otra reserva? (si/no)"
		Leer Continuar
	FinMientras
	Escribir  "Gracias por elegir nuestra agencia de viajes,Ten un lindo dia. ¡Hasta luego!."
	
FinAlgoritmo
