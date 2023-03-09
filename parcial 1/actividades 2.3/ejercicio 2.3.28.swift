import Foundation


var a = 12345
//var a = 20143831
var aux2 = a, res = a, anterior = 0, anterior2 = 0
var arreglo = [Int]()

var b = 0, aux = 0

while aux2 > 0 {
    b += 1
    aux2 = aux2 / 10
}

for i in 1..<b {
   //retiro del primer numero
    if i == 1{
        for _ in 1..<b{
        res = (res/10)
        anterior = res
        }
        arreglo.append(res)
    }
    else{//emplea el retiro anterior para poder disminuir el retiro actual y resolver en unidades

        for j in i..<b{
            aux2 = res
            res = (res/10)
            anterior2 = (j == b-1) ? res : 0
            res = (j == b-1) ? res - ((anterior2 / 10) * 10) : res
        }
            arreglo.append(res)
   
    }
    res = a
    if i == b-1 {
    arreglo.append(res - (anterior2 * 10))
    }
}
print(a , terminator: " = ")
print(arreglo)


