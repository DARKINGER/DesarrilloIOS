//
//  ViewController.swift
//  Practica3
//
//  Created by alejandro Diaz on 22/04/23.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource  {

    @IBOutlet weak var PVFigura: UIPickerView!
    
    @IBOutlet weak var txtUno: UITextField!
    @IBOutlet weak var txtDos: UITextField!
    @IBOutlet weak var txtTres: UITextField!
    @IBOutlet weak var txtCuatro: UITextField!
    
    @IBOutlet weak var imgFiguras: UIImageView!
    @IBOutlet weak var lblResultado: UILabel!
    
    //triangulo, cuadrado, rectangulo, trapecio y pentagono
    let ListaFiguras = ["default", "triangulo", "cuadrado", "rectangulo", "trapecio", "Romboide"]
    var opcion = 1
    var fila = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        PVFigura.dataSource = self
        PVFigura.delegate = self
        imgFiguras.image = UIImage.remove
        // Do any additional setup after loading the view.
    }

    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        //return (component == 0 ? ListaFiguras.count : colores2.count)
        return ListaFiguras.count
    }
    
    internal func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        //return (component == 0 ? ListaFiguras[row] : colores2[row])
        return ListaFiguras[row]
        //return (component == 0 ? ColoresTuplas[row].1 : ColoresTuplas[row].1)
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        if component == 0 {
            
            print(ListaFiguras[row])
            fila = ListaFiguras[row]
            Eleccion()
        }
    }
    
    
    @IBAction func btnArea(_ sender: UIBarButtonItem) {
        opcion = 1
        print(opcion)
        limpiar()
        Eleccion()
    }
    
    @IBAction func btnPerimetro(_ sender: UIBarButtonItem) {
        opcion = 2
        print(opcion)
        limpiar()
        Eleccion()
    }
    
    @IBAction func btnVolumen(_ sender: UIBarButtonItem) {
        opcion = 3
        print(opcion)
        limpiar()
        Eleccion()
    }
    
    
    @IBAction func btnCalcular(_ sender: UIButton) {
        Calcular()
    }
    
    @IBAction func btnLimpiar(_ sender: UIButton) {
        limpiar()
    }
    
    
    func Eleccion(){
        
        switch opcion {
        case 1:
            switch fila {
            case "triangulo":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "1")
                break
            case "cuadrado":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "2")
                break
            case "rectangulo":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "3")
                break
            case "trapecio":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base(mayor)"
                txtTres.placeholder = "base(menor)"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "4")
                break
            case "Romboide":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "5")
                break
            default:
                imgFiguras.image = UIImage.remove
                txtUno.placeholder = "Vacio"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                
            }
            break
        case 2:
            switch fila {
            case "triangulo":
                txtUno.placeholder = "Lado"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "1")
                break
            case "cuadrado":
                txtUno.placeholder = "Lado"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "2")
                break
            case "rectangulo":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "3")
                break
            case "trapecio":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base(mayor)"
                txtTres.placeholder = "base(menor)"
                txtCuatro.placeholder = "Diagonal"
                imgFiguras.image = UIImage(named: "4")
                break
            case "Romboide":
                txtUno.placeholder = "Base"
                txtDos.placeholder = "Diagonal"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "5")
                break
            default:
                imgFiguras.image = UIImage.remove
                txtUno.placeholder = "Vacio"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                
            }
            break
        case 3:
            switch fila {
            case "triangulo":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Profundidad"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "1")
                break
            case "cuadrado":
                txtUno.placeholder = "Lado"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "2")
                break
            case "rectangulo":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Profundidad"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "3")
                break
            case "trapecio":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base(mayor)"
                txtTres.placeholder = "base(menor)"
                txtCuatro.placeholder = "Profundidad"
                imgFiguras.image = UIImage(named: "4")
                break
            case "Romboide":
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Profundidad"
                txtCuatro.placeholder = "Vacio"
                imgFiguras.image = UIImage(named: "5")
                break
            default:
                imgFiguras.image = UIImage.remove
                txtUno.placeholder = "Vacio"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                
            }
            break
        default:
            print("Error")
        }
    }
    
    
    
    
    func Calcular(){
        switch opcion {
        case 1://area
            switch fila {
            case "triangulo":
                let altura = Double(txtUno.text!)
                let base = Double(txtDos.text!)
                let triangulo = Triangulo(altura: altura!, base: base!, prof: 0.0)
                
                lblResultado.text = String(triangulo.Area())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "cuadrado":
                
                let cuadrado = Cuadrado(altura: Double(txtUno.text!)!)
                lblResultado.text = String(cuadrado.Area())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "rectangulo":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let rectangulo = Rectangulo(altura: altura!, base: Base!, prof: 0.0)
                
                lblResultado.text = String(rectangulo.Area())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "trapecio":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let basemenor = Double(txtTres.text!)
                let trapecio = Trapecio(altura: altura!, base: Base!, prof: 0.0, basemenor: basemenor!)
                
                lblResultado.text = String(trapecio.Area())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base(mayor)"
                txtTres.placeholder = "base(menor)"
                txtCuatro.placeholder = "Vacio"
                break
            case "Romboide":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let rombo = Romboide(altura: altura!, base: Base!, prof: 0.0)
                
                lblResultado.text = String(rombo.Area())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            default:
                lblResultado.text = "Resultado"
                txtUno.placeholder = "Vacio"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                
            }
            break
        case 2:
            switch fila {
            case "triangulo":
                
                let triangulo = Triangulo(lado: Double(txtUno.text!)!)
                lblResultado.text = String(triangulo.Perimetro())
                
                txtUno.placeholder = "Lado"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "cuadrado":
                
                let cuadrado = Cuadrado(altura: Double(txtUno.text!)!)
                lblResultado.text = String(cuadrado.Perimetro())
                
                txtUno.placeholder = "Lado"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "rectangulo":
                
                let altura = Double(txtUno.text!)
                let base = Double(txtDos.text!)
                let rectangulo = Rectangulo(altura: altura!, base: base!, prof: 0.0)
                lblResultado.text = String(rectangulo.Perimetro())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "trapecio":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let basemenor = Double(txtTres.text!)
                let diagonal = Double(txtCuatro.text!)
                
                let trapecio = Trapecio(altura: altura!, base: Base!, prof: 0.0, diagonal: diagonal!, basemenor: basemenor!)
                lblResultado.text = String(trapecio.Perimetro())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base(mayor)"
                txtTres.placeholder = "base(menor)"
                txtCuatro.placeholder = "Diagonal"
                break
            case "Romboide":
                
                let base = Double(txtUno.text!)
                let diagonal = Double(txtDos.text!)
                let romboide = Romboide(base: base!, diagonal: diagonal!)
                
                lblResultado.text = String(romboide.Perimetro())
                
                txtUno.placeholder = "Base"
                txtDos.placeholder = "Diagonal"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            default:
                txtUno.placeholder = "Vacio"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                
            }
            break
        case 3:
            switch fila {
            case "triangulo":
                
                let altura = Double(txtUno.text!)
                let base = Double(txtDos.text!)
                let profundidad = Double(txtTres.text!)
                let triangulo = Triangulo(altura: altura!, base: base!, prof: profundidad!)
                
                lblResultado.text = String(triangulo.Volumen())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Profundidad"
                txtCuatro.placeholder = "Vacio"
                break
            case "cuadrado":
                
                let cuadrado = Cuadrado(altura: Double(txtUno.text!)!)
                lblResultado.text = String(cuadrado.Volumen())
                
                txtUno.placeholder = "Lado"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                break
            case "rectangulo":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let profundidad = Double(txtTres.text!)
                let rectangulo = Rectangulo(altura: altura!, base: Base!, prof: profundidad!)
                
                lblResultado.text = String(rectangulo.Volumen())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Profundidad"
                txtCuatro.placeholder = "Vacio"
                break
            case "trapecio":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let basemenor = Double(txtTres.text!)
                let profundidad = Double(txtCuatro.text!)
                
                let trapecio = Trapecio(altura: altura!, base: Base!, prof: 0.0, diagonal: profundidad!, basemenor: basemenor!)
                lblResultado.text = String(trapecio.Volumen())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base(mayor)"
                txtTres.placeholder = "base(menor)"
                txtCuatro.placeholder = "Profundidad"
                break
            case "Romboide":
                
                let altura = Double(txtUno.text!)
                let Base = Double(txtDos.text!)
                let profundidad = Double(txtTres.text!)
                let rombo = Romboide(altura: altura!, base: Base!, prof: profundidad!)
                
                lblResultado.text = String(rombo.Volumen())
                
                txtUno.placeholder = "Altura"
                txtDos.placeholder = "Base"
                txtTres.placeholder = "Profundidad"
                txtCuatro.placeholder = "Vacio"
                break
            default:
                
                lblResultado.text = "Resultado"
                
                txtUno.placeholder = "Vacio"
                txtDos.placeholder = "Vacio"
                txtTres.placeholder = "Vacio"
                txtCuatro.placeholder = "Vacio"
                
            }
            break
        default:
            print("Error")
        }
    }
    
    func limpiar(){
        txtUno.text = ""
        txtDos.text = ""
        txtTres.text = ""
        txtCuatro.text = ""
        
        lblResultado.text = "Resultado"
        
    }
    
    
}

