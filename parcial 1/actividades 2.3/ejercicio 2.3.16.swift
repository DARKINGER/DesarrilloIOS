

var caracter: Character = "ó"
var abecedario = "bcdfghijklmnpqrstvwxyzBCDFGHJKLMNPQRSTVWXYZ"
var digito = "0123456789"
var res = ""

for car in abecedario {
        if caracter == car {
          res = "Letra"
        break 
        } 
    }
    for car in digito {
        if caracter == car {
          res = "Digito"
        break 
        } 
    }
(caracter == "a" || caracter == "e" || caracter == "i" || caracter == "o" || caracter == "u" ||
caracter == "A" || caracter == "E" || caracter == "I" || caracter == "O" || caracter == "U") ? 
print("Vocal") : (    
    (res == "Letra") ? print(res) : (res == "Digito") ? print(res) : print("Otro caracter")
)
    



