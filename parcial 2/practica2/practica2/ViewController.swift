//
//  ViewController.swift
//  practica2
//
//  Created by alejandro Diaz on 22/04/23.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var Contenedor: UIView!
    @IBOutlet weak var lblValorRojo: UILabel!
    @IBOutlet weak var lblValorVerde: UILabel!
    @IBOutlet weak var lblValorAzul: UILabel!
    @IBOutlet weak var txtHexadecimal: UITextField!
    
    @IBOutlet weak var slRed: UISlider!
    @IBOutlet weak var slGreen: UISlider!
    @IBOutlet weak var txtValor: UITextField!
    @IBOutlet weak var slBlue: UISlider!
    @IBOutlet weak var btnAccion: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let gold = UIColor(hex: "#ffe700")

        Contenedor.backgroundColor = gold
        // Do any additional setup after loading the view.
    }

    
    
    @IBAction func swTxtSliders(_ sender: UISwitch) {
        if sender.isOn{
            slRed.isEnabled = false
            slBlue.isEnabled = false
            slGreen.isEnabled = false
            txtValor.isEnabled = true
            btnAccion.isEnabled = true
        }else{
            slRed.isEnabled = true
            slBlue.isEnabled = true
            slGreen.isEnabled = true
            txtValor.isEnabled = false
            btnAccion.isEnabled = false
        }
    }
    
    
    @IBAction func slRojo(_ sender: UISlider) {
        combinacionRGB()
    }
    
    @IBAction func slVerde(_ sender: UISlider) {
        combinacionRGB()
    }
    
    @IBAction func slAzul(_ sender: UISlider) {
        combinacionRGB()
    }
    
    @IBAction func btnCambiarColor(_ sender: UIButton) {
        let texto = txtHexadecimal.text ?? ""
        let colorea = Colorea(codigo: texto)
        if(colorea.codigo == "Error"){
            print("Error")
        }else{
        Contenedor.backgroundColor = colorea.codHexa(cod: colorea.codigo)
        }
    }
    
    func combinacionRGB(){
        let red = Double(slRed.value)
        let blue = Double(slBlue.value)
        let green = Double(slGreen.value)
        
        lblValorRojo.text = String(Int(red))
        lblValorVerde.text = String(Int(green))
        lblValorAzul.text = String(Int(blue))
        
        let colorea = Colorea(red: red, green: green, Blue: blue)
        
        Contenedor.backgroundColor = colorea.rgb(red: red, green: green, blue: blue)
        
    }
    
    
}

