//
//  ViewController.swift
//  Practica1.2
//
//  Created by alejandro Diaz on 18/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    
    @IBOutlet weak var txtY: UITextField!
    @IBOutlet weak var txtAncho: UITextField!
    @IBOutlet weak var txtX: UITextField!
    @IBOutlet weak var txtAlto: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    //var miFigra : FiguraL;
    @IBOutlet weak var lbla: UILabel!
    @IBOutlet weak var lblb: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
    @IBAction func btnArea(_ sender: UIButton) {
        
        let mifigura = Construye()
        
        lbla.text = "a = \(mifigura.a) "
        lblb.text = "b = \(mifigura.b)"
        print(mifigura.b)
        
        lblResultado.text = "Area = \(mifigura.area())"
        
    }
    
    
    @IBAction func btnPerimetro(_ sender: UIButton) {
        
        let mifigura = Construye()
        
        lbla.text = "a = \(mifigura.a) "
        lblb.text = "b = \(mifigura.b)"
        lblResultado.text = "Perimetro = \(mifigura.perimetro())"
    }
    
    func Construye() -> FiguraL{
        
        if (txtAlto.text != nil && txtAncho.text != nil && txtX.text != nil && txtY.text != nil){
            
            let alto = txtAlto.text!
            let altoNumero = Double(alto) ?? 0.0
            let ancho = txtAncho.text!
            let anchoNumero = Double(ancho) ?? 0.0
            let X = txtX.text!
            let XNumero = Double(X) ?? 0.0
            let Y = txtY.text!
            let YNumero = Double(Y) ?? 0.0
            
            let figura = FiguraL(alto: altoNumero, ancho: anchoNumero, x: XNumero, y: YNumero)
            
            return figura
        }
        let figuraNo = FiguraL(alto: 0.0, ancho: 0.0, x:0.0 , y: 0.0)
        return figuraNo
    }
    
    
}

