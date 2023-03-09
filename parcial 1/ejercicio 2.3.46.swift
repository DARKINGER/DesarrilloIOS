class Auto {
    let numeroSerieMotor: String
    let marca: String
    let anio: Int
    let precio: Double
    
    init(numeroSerieMotor: String, marca: String, anio: Int, precio: Double) {
        self.numeroSerieMotor = numeroSerieMotor
        self.marca = marca
        self.anio = anio
        self.precio = precio
    }
}

class Compacto: Auto {
    let cantidadPasajeros: Int
    
    init(numeroSerieMotor: String, marca: String, anio: Int, precio: Double, cantidadPasajeros: Int) {
        self.cantidadPasajeros = cantidadPasajeros
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, anio: anio, precio: precio)
    }
}

class DeLujo: Auto {
    let cantidadPasajeros: Int
    
    init(numeroSerieMotor: String, marca: String, anio: Int, precio: Double, cantidadPasajeros: Int) {
        self.cantidadPasajeros = cantidadPasajeros
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, anio: anio, precio: precio)
    }
}

class Camioneta: Auto {
    let capacidadCarga: Double
    let cantidadEjes: Int
    let cantidadRodadas: Int
    
    init(numeroSerieMotor: String, marca: String, anio: Int, precio: Double, capacidadCarga: Double, cantidadEjes: Int, cantidadRodadas: Int) {
        self.capacidadCarga = capacidadCarga
        self.cantidadEjes = cantidadEjes
        self.cantidadRodadas = cantidadRodadas
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, anio: anio, precio: precio)
    }
}

class Vagoneta: Auto {
    let cantidadPasajeros: Int
    
    init(numeroSerieMotor: String, marca: String, anio: Int, precio: Double, cantidadPasajeros: Int) {
        self.cantidadPasajeros = cantidadPasajeros
        super.init(numeroSerieMotor: numeroSerieMotor, marca: marca, anio: anio, precio: precio)
    }
}

//instanciando cada tipo de vehículo
let miCompacto = Compacto(numeroSerieMotor: "ABC123", marca: "Toyota", anio: 2021, precio: 20000, cantidadPasajeros: 5)
let miDeLujo = DeLujo(numeroSerieMotor: "DEF456", marca: "BMW", anio: 2022, precio: 50000, cantidadPasajeros: 4)
let miCamioneta = Camioneta(numeroSerieMotor: "GHI789", marca: "Ford", anio: 2020, precio: 40000, capacidadCarga: 1500, cantidadEjes: 2, cantidadRodadas: 4)
print(miCompacto, miCompacto.marca)
print(miCamioneta, miCamioneta.marca)
print(miDeLujo, miDeLujo.marca)