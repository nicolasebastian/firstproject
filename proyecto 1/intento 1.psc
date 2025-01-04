Algoritmo CalcularCostoProducto
		// Leer el precio original del producto
		Escribir "Ingrese el precio original del producto:"
		Leer precioOriginal
		
		// Leer si el cliente tiene un cupón de descuento
		Escribir "¿Tiene un cupón de descuento? (si/no):"
		Leer tieneCupon
		Si tieneCupon = "si" Entonces
			Escribir "Ingrese el porcentaje de descuento:"
			Leer porcentajeDescuento
		Sino
			porcentajeDescuento <- 0
		FinSi
		
		// Aplicar el descuento
		precioConDescuento <- precioOriginal * (1 - porcentajeDescuento / 100)
		
		// Aplicar impuestos (por ejemplo, IVA del 21%)
		porcentajeIVA <- 21
		precioConImpuestos <- precioConDescuento * (1 + porcentajeIVA / 100)
		
		// Leer la cantidad de artículos comprados
		Escribir "Ingrese la cantidad de artículos comprados:"
		Leer cantidadArticulos
		Si cantidadArticulos > 1 Entonces
			porcentajeDescuentoCantidad <- 5 // Descuento por cantidad del 5%
		Sino
			porcentajeDescuentoCantidad <- 0
		FinSi
		precioConDescuentoCantidad <- precioConImpuestos * (1 - porcentajeDescuentoCantidad / 100)
		
		// Calcular el costo de envío basado en el destino y el peso del paquete
		Escribir "Ingrese el destino (nacional/internacional):"
		Leer destino
		Escribir "Ingrese el peso del paquete (kg):"
		Leer pesoPaquete
		Si destino = "nacional" Entonces
			costoEnvio <- pesoPaquete * 10 // Costo de envío nacional
		Sino
			costoEnvio <- pesoPaquete * 20 // Costo de envío internacional
		FinSi
		
		// Calcular el costo final del producto
		costoFinal <- precioConDescuentoCantidad + costoEnvio
		
		// Mostrar el costo final del producto desglosado
		Escribir "Precio original: ", precioOriginal
		Escribir "Descuento aplicado: ", precioOriginal - precioConDescuento
		Escribir "Precio con descuento: ", precioConDescuento
		Escribir "Impuestos aplicados: ", precioConDescuento * (porcentajeIVA / 100)
		Escribir "Precio con impuestos: ", precioConImpuestos
		Escribir "Descuento por cantidad: ", precioConImpuestos - precioConDescuentoCantidad
		Escribir "Precio con descuento por cantidad: ", precioConDescuentoCantidad
		Escribir "Costo de envío: ", costoEnvio
		Escribir "Costo final del producto: ", costoFinal
FinAlgoritmo

