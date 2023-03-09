



class Main{

     func adding(array : inout [Any] , _ val : String = "") {
        array.append(val)
    }
    func adding(array : inout [Any] , _ val2 : Int = 0) {
        array.append(val2)
    }
    func set(array : inout [Any]) -> Any{
        var count = array.count
        var mostrar = array[count-1]
        return mostrar
    }
}

let main = Main()
var arreglo : [Any] = [1, "dos", 3, "cuatro"]

main.adding(array : &arreglo, 5)
main.adding(array : &arreglo, "seis")
print(arreglo)

print(main.set(array : &arreglo))

