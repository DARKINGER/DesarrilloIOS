//
//  Figura.swift
//  Practica3
//
//  Created by alejandro Diaz on 22/04/23.
//
//triangulo, cuadrado, rectangulo, trapecio y pentagono

import Foundation


class Figura{
    func Area()->Double{
        let res = 0.0
        return res
    }
    func Perimetro()->Double{
        let res = 0.0
        return res
    }
    func Volumen()->Double{
        let res = 0.0
        return res
    }
}


class Triangulo:Figura{
    var Altura : Double
    var Base : Double
    var Profundidad : Double
    
    init(altura:Double, base:Double, prof:Double){
        self.Altura = altura
        self.Base = base
        self.Profundidad = prof
    }
    
    init(lado:Double){
        self.Base = lado
        self.Altura = 0.0
        self.Profundidad = 0.0
    }
    
    override func Area()->Double{
        let res = (self.Base * self.Altura) / 2.0
        return res
        //return (self.Base * self.Altura) / 2.0
    }
    
    override func Perimetro()->Double{
        let res = (self.Base * 4.0)
        return res
        //return (self.Base * 3.0)
    }
    override func Volumen() -> Double {
        let res = ((self.Base * self.Altura) * self.Profundidad)
        return res
    }
}

class Cuadrado:Figura{
    var Altura : Double
    
    init(altura:Double){
        self.Altura = altura
    }
    
    override func Area()->Double{
        let res = (self.Altura * self.Altura)
        return res
        //return (self.Base * self.Altura) / 2.0
    }
    
    override func Perimetro()->Double{
        let res = (self.Altura * 4.0)
        return res
        //return (self.Base * 3.0)
    }
    override func Volumen() -> Double {
        let res = (self.Altura * self.Altura) * self.Altura
        return res
    }
}

class Rectangulo:Figura{
    var Altura : Double
    var Base : Double
    var Profundidad : Double
    
    init(altura:Double, base:Double, prof:Double){
        self.Altura = altura
        self.Base = base
        self.Profundidad = prof
    }
    
    override func Area()->Double{
        let res = (self.Base * self.Altura)
        return res
        //return (self.Base * self.Altura) / 2.0
    }
    
    override func Perimetro()->Double{
        let res = (self.Base + self.Altura) * 2.0
        return res
        //return (self.Base * 3.0)
    }
    override func Volumen() -> Double {
        let res = (Area() * self.Profundidad)
        return res
    }
}

class Trapecio:Figura{
    var Altura : Double
    var Basemayor : Double
    var basemenor : Double
    var Profundidad : Double
    var Diagonal : Double
    
    init(altura:Double, base:Double, prof:Double, basemenor:Double){
        self.Altura = altura
        self.Basemayor = base
        self.Profundidad = prof
        self.basemenor = basemenor
        self.Diagonal = 0.0
    }
    
    
    init(altura:Double, base:Double, prof:Double, diagonal: Double, basemenor:Double){
        self.Altura = altura
        self.Basemayor = base
        self.basemenor = basemenor
        self.Profundidad = prof
        self.Diagonal = diagonal
    }
    
    override func Area()->Double{
        let res = ((self.Basemayor + self.basemenor) / 2.0) * self.Altura
        return res
        //return (self.Base * self.Altura) / 2.0
    }
    
    override func Perimetro()->Double{
        let res = (self.Altura+self.Basemayor+self.basemenor+self.Diagonal)
        return res
        //return (self.Base * 3.0)
    }
    override func Volumen() -> Double {
        let res = (Area() * self.Profundidad)
        return res
    }
}

class Romboide:Figura{
    var Altura : Double
    var Base : Double
    var Profundidad : Double
    var Diagonal : Double
    
    init(altura:Double, base:Double, prof:Double){
        self.Altura = altura
        self.Base = base
        self.Profundidad = prof
        self.Diagonal = 0.0
    }
    
    init(base:Double, diagonal:Double){
        self.Altura = 0.0
        self.Base = base
        self.Profundidad = 0.0
        self.Diagonal = diagonal
    }
    
    override func Area()->Double{
        let res = (self.Base * self.Altura)
        return res
        //return (self.Base * self.Altura) / 2.0
    }
    
    override func Perimetro()->Double{
        let res = (self.Diagonal * 2.0) + (self.Base * 2.0)
        return res
        //return (self.Base * 3.0)
    }
    override func Volumen() -> Double {
        let res = (Area() * self.Profundidad)
        return res
    }
}
