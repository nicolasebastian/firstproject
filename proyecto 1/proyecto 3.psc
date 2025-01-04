Algoritmo Proyecto1
	
	//constante
	IVA<- 0.19
	Descuento<- 0.10
	
	//variables
	Precio<- 0
    Precio_DCTO<- 0
    Precio_IVA<- 0
    Precio_Cantidad<- 0
	Costo_Envio<- 0
    Precio_Final<- 0
    
    Escribir "Ingrese el precio original de los zapatos:"
    Leer precio
    
    // Leer si el cliente tiene un cupón de descuento
    Escribir "¿Tiene una GIFTCARD de descuentos?:"
    Leer Descuento
    Si Descuento >  Entonces
        Escribir "¡FELICIDADES! tienes 10% de DCTO"
    Sino
        Descuento <- 0
    FinSi
    
	// Aplicar impuestos (IVA del 19%)
    Precio_IVA<- precio + IVA	
	
	// Aplicar el descuento
    Precio_DCTO<- Precio_IVA - Descuento
    
    
    // Leer la cantidad de artículos comprados
    Escribir "Ingrese la cantidad de artículos comprados:"
    Leer Numero_Productos
    Si Numero_Productos > 1 Entonces
        DCTO_Cantidad <- 0.8
	Sino
        DCTO_Cantidad <- 0
    FinSi
    Precio_Cantidad <- Precio_DCTO * DCTO_Cantidad
    
    // Calcular el costo de envío basado en el destino y el peso del paquete
    Escribir "Ingrese el d   |	estino (nacional/internacional):"
    Leer destino
    Escribir "Ingrese el peso del paquete (kg):"
    Leer Peso_Paquete
    Si destino = "nacional" Entonces
        Escribir "ENVIO GRATIS"
    Sino
        Costo_Envio <- Peso_Paquete * 20 
    FinSi
    
    // Calcular el costo final del producto
    Precio_Final <- Precio_Cantidad + Costo_Envio
    
    // Mostrar el costo final del producto desglosado
    Escribir "Precio original: ", precio
    Escribir "Descuento aplicado: ", precio - Precio_DCTO
    Escribir "Precio con descuento: ", Precio_DCTO
    Escribir "Impuestos aplicados: ", Precio_DCTO + IVA
    Escribir "Precio con impuestos: ", Precio_IVA
    Escribir "Descuento por cantidad: ", Precio_DCTO - Precio_Cantidad
    Escribir "Precio con descuento por cantidad: ", Precio_Cantidad
    Escribir "Costo de envío: ", Costo_Envio
    Escribir "Costo final del producto: ", Precio_Final
FinAlgoritmo