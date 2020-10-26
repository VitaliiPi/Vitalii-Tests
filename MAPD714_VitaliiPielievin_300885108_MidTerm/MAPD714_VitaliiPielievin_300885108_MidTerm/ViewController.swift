//
//
//
// MAPD714_VitaliiPielievin_300885108_MidTerm/ViewController.swift
// Vitalii Pielievin
// 300885108
// 27/10/2020
//
// Version 1.0
//
//


import UIKit

class ViewController: UIViewController {
    
    
    //quantities
    @IBOutlet weak var quantityone: UITextField!
    @IBOutlet weak var quantitytwo: UITextField!
    @IBOutlet weak var quantitythree: UITextField!
    @IBOutlet weak var quantityfour: UITextField!
    @IBOutlet weak var quantityfive: UITextField!

    
    //text fields
    @IBOutlet weak var listName: UITextField!
    @IBOutlet weak var inlistone: UITextField!
    @IBOutlet weak var inlisttwo: UITextField!
    @IBOutlet weak var inlistthree: UITextField!
    @IBOutlet weak var inlistfour: UITextField!
    @IBOutlet weak var inlistfive: UITextField!
    
    //saved quantity values
    var quantityval1: Int!
    var quantityval2:Int!
    var quantityval3:Int!
    var quantityval4:Int!
    var quantityval5:Int!
    // variable to cancel to
    var defaultListName:String! = "My Shopping List"
    var defaultListItemName:String! = ""
    var defaultQuantity:String! = "1"
    
    //Dismantle keyboard on tap where there's an empty place
    override func touchesBegan(_ touches: Set<UITouch>,
                                with event: UIEvent?) {
    view.endEditing(true)
    }
    
    //increase quantity by pressing +
    @IBAction func quantity1Plus(_ sender: UIButton) {
        quantityval1 = Int(quantityone.text!)
        quantityval1! = quantityval1!+1
        quantityone.text! = String(quantityval1!)
    }
    
    //decrease quantity by pressing -
    @IBAction func quantity1Minus(_ sender: UIButton) {
     if quantityval1 > 1 {
          quantityval1 = Int(quantityone.text!)
          quantityval1! = quantityval1!-1
          quantityone.text! = String(quantityval1!)
        }
    }
    
    //increase quantity by pressing +
    @IBAction func quantity2Plus(_ sender: UIButton) {
        quantityval2 = Int(quantitytwo.text!)
        quantityval2! = quantityval2!+1
        quantitytwo.text! = String(quantityval2!)
    }
    
    //decrease quantity by pressing -
    @IBAction func quantity2Minus(_ sender: UIButton) {
        
        if quantityval2 > 1 {
            quantityval2 = Int(quantitytwo.text!)
            quantityval2! = quantityval2!-1
            quantitytwo.text! = String(quantityval2!)
        }
    }
    
    //increase quantity by pressing +
    @IBAction func quantity3Plus(_ sender: UIButton) {
        quantityval3 = Int(quantitythree.text!)
        quantityval3! = quantityval3!+1
        quantitythree.text! = String(quantityval3!)
    }
    
    //decrease quantity by pressing -
    @IBAction func quantity3Minus(_ sender: UIButton) {
        if quantityval3 > 1 {
            quantityval3 = Int(quantitythree.text!)
            quantityval3! = quantityval3!-1
            quantitythree.text! = String(quantityval3!)
        }
    }
    
    //increase quantity by pressing +
    @IBAction func quantity4Plus(_ sender: UIButton) {
        quantityval4 = Int(quantityfour.text!)
        quantityval4! = quantityval4!+1
        quantityfour.text! = String(quantityval4!)
    }
    
    //decrease quantity by pressing -
    @IBAction func quantity4Minus(_ sender: Any) {
        if quantityval4 > 1 {
            quantityval4 = Int(quantityfour.text!)
            quantityval4! = quantityval4!-1
            quantityfour.text! = String(quantityval4!)
        }
    }
    
    //increase quantity by pressing +
    @IBAction func quantity5Plus(_ sender: UIButton) {
        quantityval5 = Int(quantityfive.text!)
        quantityval5! = quantityval5!+1
        quantityfive.text! = String(quantityval5!)
    }
    
    //decrease quantity by pressing -
    @IBAction func quantity5Minus(_ sender: UIButton) {
        if quantityval5 > 1 {
             quantityval5 = Int(quantityval5!)
             quantityval5! = quantityval5!-1
             quantityfive.text! = String(quantityval5!)
         }
    }
    
    
    
    //defaulting everything on the screen on load
    override func viewDidLoad() {
        super.viewDidLoad()
        listName.textAlignment = .center
        quantityone.isUserInteractionEnabled=false
        quantitytwo.isUserInteractionEnabled=false
        quantitythree.isUserInteractionEnabled=false
        quantityfour.isUserInteractionEnabled=false
        quantityfive.isUserInteractionEnabled=false
        quantityone.text = defaultQuantity
        quantitytwo.text = defaultQuantity
        quantitythree.text = defaultQuantity
        quantityfour.text = defaultQuantity
        quantityfive.text = defaultQuantity
        listName.text = defaultListName
        inlistone.text = defaultListItemName
        inlisttwo.text = defaultListItemName
        inlistthree.text = defaultListItemName
        inlistfour.text = defaultListItemName
        inlistfive.text = defaultListItemName
        
    }
    
    //cancel resreshes everything to their default values
    @IBAction func refresh(_ sender: UIButton) {
        viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
   
}
