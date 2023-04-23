//
//  FiguraL.swift
//  Practica1.2
//
//  Created by alejandro Diaz on 18/04/23.
//

import Foundation

class FiguraL{
    
    var alto:Double = 0.0
    var ancho:Double
    var x:Double
    var y:Double
    var a:Double = 0
    var b:Double = 0
    
    init(alto:Double, ancho:Double, x:Double, y:Double){
        self.alto = alto
        self.ancho = ancho
        self.x = x
        self.y = y
        self.a = (alto - y)
        self.b = (ancho - x)
    }
    
    func area() -> String{
        let res = ((x * a) + (ancho * y))
        return String(res)
    }
    
    func perimetro() -> String{
        let res = (ancho + alto + x + y + b + (alto - y))
        return String(res)
    }
    
}


