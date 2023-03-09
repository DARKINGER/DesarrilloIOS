//aries 29 dias, tauro 30, junio 30


var mes = 6, dias = 3

switch mes {
case 1:
    (dias >= 1 && dias <= 19) ? print("Capricornio") : ((dias >= 20 && dias <= 31) ? print("Acuario") : print("no es valida"))
case 2:
    (dias >= 1 && dias <= 18) ? print("Acuario") : ((dias >= 19 && dias <= 29) ? print("Piscis") : print("no es valida"))
case 3:
    (dias >= 1 && dias <= 20) ? print("Piscis ") : ((dias >= 21 && dias <= 31) ? print("Aries ") : print("no es valida"))
case 4:
    (dias >= 1 && dias <= 19) ? print("Aries ") : ((dias >= 20 && dias <= 30) ? print("Tauro") : print("no es valida"))
case 5:
    (dias >= 1 && dias <= 20) ? print("Tauro") : ((dias >= 21 && dias <= 31) ? print("Geminis") : print("no es valida"))
case 6:
    (dias >= 1 && dias <= 21) ? print("Geminis ") : ((dias >= 22 && dias <= 30) ? print("Cáncer") : print("no es valida"))
case 7:
    (dias >= 1 && dias <= 22) ? print("Cáncer") : ((dias >= 23 && dias <= 31) ? print("Leo") : print("no es valida"))
case 8:
    (dias >= 1 && dias <= 22) ? print("Leo") : ((dias >= 23 && dias <= 31) ? print("Virgo") : print("no es valida"))
case 9:
    (dias >= 1 && dias <= 22) ? print("Virgo") : ((dias >= 23 && dias <= 30) ? print("Libra") : print("no es valida"))
case 10:
    (dias >= 1 && dias <= 22) ? print("Libra") : ((dias >= 23 && dias <= 31) ? print("Escorpio") : print("no es valida"))
case 11:
    (dias >= 1 && dias <= 21) ? print("Escorpio") : ((dias >= 22 && dias <= 30) ? print("Sagitario") : print("no es valida"))
case 12:
    (dias >= 1 && dias <= 21) ? print("Sagitario") : ((dias >= 22 && dias <= 31) ? print("Capricornio") : print("no es valida"))
default:
    print("La fecha no se encuentra en el calendario")
}




