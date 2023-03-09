



var x = 9, cont = 0

for i in 1..<x {

    if ((x % i) == 0){
        cont += 1
    }
}

(cont > 2 || cont < 2) ? print("No es primo") : print("Es primo")

