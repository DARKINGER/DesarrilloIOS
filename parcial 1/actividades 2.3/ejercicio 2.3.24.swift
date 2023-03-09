


var arreglo = [1, 2, 3, 10, 100], mayor = 0

for i in 0..<arreglo.count{
    mayor = (arreglo[i] > mayor) ? arreglo[i] : mayor
}
print(mayor)
