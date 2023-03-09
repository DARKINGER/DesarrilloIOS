import Foundation


var arreglo = [1,2,3,5,9,4,3,2,1] //deve dar = 4
var alto = 0, posicion = 0

for num in 0..<arreglo.count {
    if arreglo[alto] < arreglo[num]
    {
        alto = num
    }

}
print("1.- ", terminator: "Posicion del numero mas alto en el arreglo: ")	
print(alto)

////////////////////////////////////////////////////////////////////////////////////////////
//ejercicio 2
////////////////////////////////////////////////////////////////////////////////////////



var cadena = "la lluvia es maravillosa"
var cadena2 = "el hombre es un cossmos pequeño y el cosmos es un hombre grande"
var numVocales = 0

for i in cadena{
    if (i == "a" || i == "e" || i == "i" || i == "o" || i == "u" ||
    i == "A" || i == "E" || i == "I" || i == "O" || i == "U"){
        numVocales += 1
    }
}

print("2.- el numero total de vocales es: \(numVocales)")



//var estrellas = [1,2,3,2,1,3,5,2,3,1] // = 2
var estrellas = [7,8,9,7,8,2,1,8,6,9] // = 2
var totEstrellas = 0

for i in 0..<estrellas.count{
    if i != 0{
        if ((i+1) < estrellas.count){ 
            if (estrellas[i-1] > estrellas[i] && estrellas[i] < estrellas[i+1]){
                totEstrellas += 1
            }
        }
    }
}

print("Estrellas = \(totEstrellas)")




class Raicez{
    var a : Double = 0.0
    var b : Double = 0.0
    var c : Double = 0.0

    func obtenerRaices(){
        print( (0 - (b ^ 2) + ((b^2)+(4*a*c)).squareRoot())/(2*a)  )
        print( (0 - (b ^ 2) - ((b^2)-(4*a*c)).squareRoot())/(2*a)  )
    }

    func obtenerRaiz(){
        var disc = obtenerDiscriminante()
        if disc = 0{
        print( (0 - (b ^ 2) + ((b^2)+(4*a*c)).squareRoot())/(2*a)  )
        }
    }
    func obtenerDiscriminante() -> Double{
        return ((b^2) - (4 * a * c))
    }

    init(a: Double, b: Double, c: Double){
        self.a = a
        self.b = b
        self.c = c
    }
    func tieneRaices() -> Bool{
        var disc = obtenerDiscriminante()
        if disc > 0{
            return true
        }
        else{
            return false
        }
    }
    func tieneRaiz() -> Bool{
         var disc = obtenerDiscriminante()
        if disc = 0{
            return true
        }
        else{
            return false
        }
    }
    func calcular() {
        var disc = obtenerDiscriminante()
        if disc > 0{
            var formula1 = (0 - (b ^ 2) + ((b^2)+(4*a*c)).squareRoot())/(2*a) 
            var formula2 = (0 - (b ^ 2) - ((b^2)-(4*a*c)).squareRoot())/(2*a) 
        print(formula1) 
        print(formula2) 

        }
        else{
            if disc = 0{
                 var formula1 = (0 - (b ^ 2) + ((b^2)-(4*a*c)).squareRoot())/(2*_a) 
                print(formula1) 
            }else{
                print("No tiene solucion")
            }
        }
    }

}

var prueba = Raicez(a:7,b:8,c:9)
prueba.obtenerRaices() 





