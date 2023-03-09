


//var a = [1, 2, 3, 10, 100], b = [1, 2, 3, 4, 5, 6]
var a = [1, 2, 3, 10, 100], b = [5, 2, 3, 10, 13]
//var a = [1, 2, 3, 10, 100], b = [5, 6]

var aux = 0, aux2 = 0

for i in 0..<a.count {
    aux = a[i]
    for j in 0..<b.count {
        aux2 = (aux == b[j]) ? 1 :  0
        if aux2 != 0{
          print(aux)
        }
    }

}

