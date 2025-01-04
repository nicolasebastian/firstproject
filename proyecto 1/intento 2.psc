Algoritmo sin_titulo
    // Declaración de variables
    Definir precioOriginal, descuentoPorcentaje, descuentoCantidad, impuestosPorcentaje, costoEnvio, costoFinal Como Real
    Definir cantidad, pesoPaquete Como Entero
    Definir tieneCupon, destino Como Cadena
	
    // Leer el precio original del producto
    Escribir "Ingrese el precio original del producto:"
    Leer precioOriginal
	
    // Leer si el cliente tiene un cupón de descuento
    Escribir "¿El cliente tiene un cupón de descuento? (si/no):"
    Leer tieneCupon
	
    // Determinar el porcentaje de descuento
    Si tieneCupon = "si" Entonces
        Escribir "Ingrese el porcentaje de descuento (sin %):"
        Leer descuentoPorcentaje
    Sino
        descuentoPorcentaje <- 0
    Fin Si
	
    // Leer la cantidad de productos comprados
    Escribir "Ingrese la cantidad de productos comprados:"
    Leer cantidad
	
    // Aplicar descuento por cantidad
    Si cantidad > 1 Entonces
        descuentoCantidad <- 0.05 * cantidad * precioOriginal // Descuento del 5% por cada artículo extra
    Sino
        descuentoCantidad <- 0
    Fin Si
	
    // Calcular el precio después del descuento inicial
    precioConDescuento <- precioOriginal - (precioOriginal * (descuentoPorcentaje / 100))
	
    // Leer el porcentaje de impuestos
    Escribir "Ingrese el porcentaje de impuestos aplicable (sin %):"
    Leer impuestosPorcentaje
	
    // Calcular impuestos
    impuestos <- precioConDescuento * (impuestosPorcentaje / 100)
	
    // Calcular el costo de envío
    Escribir "Ingrese el destino del paquete (nacional/internacional):"
    Leer destino
    Escribir "Ingrese el peso del paquete en kg:"
    Leer pesoPaquete
	
    Si destino = "nacional" Entonces
        Si pesoPaquete <= 5 Entonces
            costoEnvio <- 50
        Sino
            costoEnvio <- 50 + (pesoPaquete - 5) * 10
        Fin Si
    Sino Si destino = "internacional" Entonces
			Si pesoPaquete <= 5 Entonces
				costoEnvio <- 100
			Sino
				costoEnvio <- 100 + (pesoPaquete - 5) * 20
			Fin Si
		Fin Si
	Fin Si
		
		// Calcular el costo final del producto
		costoFinal <- (precioConDescuento * cantidad) - descuentoCantidad + impuestos + costoEnvio
		
		// Mostrar el desglose del costo final
		Escribir "---- Desglose del costo final ----"
		Escribir "Precio original del producto: ", precioOriginal
		Escribir "Descuento aplicado: ", precioOriginal * (descuentoPorcentaje / 100)
		Escribir "Descuento por cantidad: ", descuentoCantidad
		Escribir "Impuestos: ", impuestos
		Escribir "Costo de envío: ", costoEnvio
		Escribir "Costo final: ", costoFinal
FinAlgoritmo
