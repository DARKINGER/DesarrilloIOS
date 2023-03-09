//enum 

enum DispositivoiOS{
    case iPhone
    case iPad
    case iPod
}

var miDispositivo = DispositivoiOS.iPad
print(miDispositivo)

miDispositivo = .iPod
print(miDispositivo)

//Enumeraciones con valor asociado
enum TipoDispositivo{
    case iPhone(String)
    case iPad(String)
    case appleWatch
}

var miDispositivo2 =  TipoDispositivo.iPhone("3 G")
switch miDispositivo2 {

    case .iPhone(let modelo):
        print("iPhone \(modelo)")
    case .iPad(let modelo):
        print("iPad \(modelo)")
    case .appleWatch:
        print("ApplemWatch")
    
}
print(miDispositivo2)

//diccionario = pares de llave valor
//contirnen a(LLave, valor)
var diccionario1: Dictionary<String, Int> //sin inicializar
var diccionario2: [String:Int] //sin inicializar
var diccionario3 = ["uno": 1, "Dos": 2, "Tres": 3] //inicializado
//inicializar un diccionario
diccionario1 = [:]
diccionario2 = ["Uno": 1]
var diccionario4: [String:Int] = [:]
//agregar llaves
diccionario3["Cuatro"] = 5 //si no lo encuentra se agrega y si lo tiene lo modifica
diccionario3["Cuatro"] = 6 //si no lo encuentra se agrega y si lo tiene lo modifica
print(diccionario3)
//solo actualiza y no agrega

diccionario3.updateValue(4, forKey: "Cuatro")
print(diccionario3)

diccionario3.removeValue(forKey: "Cuatro")
print(diccionario3["Tres"]!)//desenvolver en valores especificos

print(diccionario3.count)
print(diccionario3.isEmpty)





