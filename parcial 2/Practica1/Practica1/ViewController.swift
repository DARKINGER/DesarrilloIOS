//
//  ViewController.swift
//  Practica1
//
//  Created by alejandro Diaz on 20/03/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var txtEdad: UITextField!
    @IBOutlet weak var lblResultado: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func btnCalcular(_ sender: UIButton) {
        var edad = 0
        if txtEdad.text != nil
        {
            let texto = txtEdad.text ?? "0"
            let edad1 = Int(texto)
            edad = edad1 ?? 0
        }
        
        if edad > 7
        {
            let res = edad / 7
            lblResultado.text = String(res)
        }
    
    }
    }
