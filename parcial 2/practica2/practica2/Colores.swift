//
//  Colores.swift
//  practica2
//
//  Created by alejandro Diaz on 22/04/23.
//

import Foundation
import UIKit

extension UIColor	{
    public convenience init?(hex: String) {
        let r, g, b, a: CGFloat

        if hex.hasPrefix("#") {
            let start = hex.index(hex.startIndex, offsetBy: 1)
            let hexColor = String(hex[start...])

            if hexColor.count == 6 {
                let scanner = Scanner(string: hexColor)
                var hexNumber: UInt64 = 0

                if scanner.scanHexInt64(&hexNumber) {
                    //r = CGFloat((hexNumber & 0xff000000) >> 24) / 255
                    r = CGFloat((hexNumber & 0xff0000) >> 16) / 255
                    g = CGFloat((hexNumber & 0x00ff00) >> 8) / 255
                    b = CGFloat(hexNumber & 0x0000ff) / 255
                    a = 1

                    self.init(red: r, green: g, blue: b, alpha: a)
                    return
                }
            }
        }

        return nil
    }
}





class Colorea{
    
    var r, g, b : Double
    var codigo : String
    
    init(red:Double, green:Double, Blue:Double){
        self.r = red
        self.g = green
        self.b = Blue
        self.codigo = ""
        
    }
    
    init(codigo:String){
        var bandera = 0
        var codigoMayuscula = ""
        self.codigo = ""
        
        if(codigo.count == 6){
            print("Se registro" + String(codigo.count))
            for x in codigo {
                var xcomplemento = ""
                xcomplemento += String(x)
                
                let set = CharacterSet(charactersIn: xcomplemento)
                if !CharacterSet.decimalDigits.isSuperset(of: set){
                    
                    xcomplemento = xcomplemento.uppercased()
                    
                    if (xcomplemento == "A" || xcomplemento == "B" || xcomplemento == "C" || xcomplemento == "D" || xcomplemento == "E" || xcomplemento == "F"){
                        codigoMayuscula += xcomplemento
                    }else{
                        bandera = 1
                        break
                    }
                        
                }else{
                codigoMayuscula += xcomplemento
                }
                
            }
            if (bandera != 1){
                self.codigo = codigoMayuscula
            }else {
                self.codigo = "Error"
            }
            
        }else{
            self.codigo = "Error"
        }
        
        
        self.r = 0.0
        self.g = 0.0
        self.b = 0.0
    }
    
    func codHexa(cod:String)->(UIColor){
        print(cod)
        return UIColor(hex: "#\(cod)")!
    }
    
    func rgb(red:Double, green:Double, blue:Double)->UIColor{
        return UIColor(red: red/100, green: green/100, blue: blue/100, alpha: 1)
    }
    
    
}
