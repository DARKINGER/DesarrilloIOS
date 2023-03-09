



class Main{

    func adding(array : inout [Any] , _ val : String = "") {
        array.insert(val,at:0)
    }
    func adding(array : inout [Any] , _ val2 : Int = 0) {
        array.insert(val2,at:0)
    }
    func set(array : inout [Any]) -> Any{
        return array[0]
    }
    func get(array : inout [Any]) -> Any{
        let aux = array.remove(at: 0)
        return aux
    }
  
}


let main = Main()

var arreglo: [Any] = [1,"",2]
var arreglo2: [Any] = []

print("arreglo original: \(arreglo)")

main.adding(array : &arreglo, "casaAzul")
print(arreglo)
print("mostrar contenido del indice 1 : ", terminator:"")
print(main.set(array : &arreglo))
print("eliminacion del contenido del primer indice: ", terminator:"")
print(main.get(array : &arreglo))
print(arreglo)


