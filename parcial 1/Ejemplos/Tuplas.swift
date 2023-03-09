
//tupla sin etiquetar los elementos
//las tuplas no cambian los [] por () 
var persona1 = ("Humberto", "Peña", "Valle")

var nombre = persona1.0
var appaterno = persona1.1
var appmaterno = persona1.2


//tupla etiquetando los elementos

var persona2 = (nombre: "Humberto", appaterno: "Peña", appmaterno: "Valle",
 edad: 43, carrera: "ISC", titulado: true)
 
 nombre = persona2.nombre
 appaterno = persona2.appaterno
 appmaterno = persona2.appmaterno
 let edad = persona2.edad
 print(persona2.5)

print(persona2)

//se puede tener un arreglo de tuplas
var personas = [
    (nombre: "Alejandro", appaterno: "Diaz", appmaterno: "Medrano", edad: 21, carrera: "ÏSC"),
    (nombre: "Scarlett", appaterno: "Johanson", appmaterno: "", edad: 37, carrera: "Actriz")
]

//se pueden usar los metodos y propiedades de los arreglos
//impresion
print("Impresion de una persona dentro del arreglo: \(personas[0].nombre)")

//forma de obtener datos
var (v1, v2, v3, v4, v5, v6) = persona2
print(v1)
var (v7, v8, v9, v10, v11) = personas[0]
print(v7)
//omitir otros campos
var (_, _, _, _, v12, _) = persona2
print(v12)

var (a,b,c) = (1,2,3)
print(b)



//un metodo puede devolver varios valores (del mismo o diferente tipo de dato), 
//mediante una tupla

func divmod(_ a: Int, _ b: Int) -> (CocienteEntero: Int, 
residuo: Int, cocienteReal: Double){
    return (a/b, a%b, Double(a) / Double(b))
                                    //|
                                    //Casteo o conversion a doble
} 

var resultado = divmod(7,2)
print(resultado)

//impresion de dato en dato
print(divmod(7,2).CocienteEntero)
print(divmod(7,2).1)
print(divmod(7,2).cocienteReal)





