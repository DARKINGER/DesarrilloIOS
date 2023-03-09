

let Diccionario1 = [["Apellido":"Perea", "Nombre":"Alicia"],["Apellido":"Flores",
 "Nombre":"Norma"],["Apellido":"Noriega", "Nombre":"Roberto"]]

var arreglo = [String]()

for dic in Diccionario1 {
var nombreApellido = ""
    nombreApellido = dic["Nombre"]! + " " + dic["Apellido"]!
    arreglo.append(nombreApellido)
}
print(arreglo)
