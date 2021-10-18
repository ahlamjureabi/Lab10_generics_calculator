

import UIKit

class ViewController: UIViewController {

    var numberOnScreen: Double = 0
        var previousNumber : Double = 0
        var performingMath = false
        var opration = 0
    
    @IBOutlet weak var label: UILabel!
    
    
    
    @IBAction func Numbers(_ sender: UIButton) {
        if performingMath == true{
            label.text = String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
            performingMath = false
            
        }
        else{
            
            label.text = label.text! + String(sender.tag-1)
            numberOnScreen = Double(label.text!)!
        }
        
        
    }
    
    @IBAction func Buttons(_ sender: UIButton) {
        if label.text !=  "" && sender.tag != 11 && sender.tag != 16 {
                   previousNumber = Double(label.text!)!
                   
                   if sender.tag == 12 {//Divide
                       label.text = "/"
                       
                   }
                   if sender.tag == 13{//Multiplay
                       label.text = "x"
                       
                   }
              
               if sender.tag == 14{//Subtract
                   label.text = "-"
                   
               }
          
           
           if sender.tag == 15 {//Add
               label.text = "+"
               
           }
               opration = sender.tag
               performingMath = true
           
               }
               else if sender.tag == 16{
               
                   if opration == 12 {//Divide
                       label.text = String(previousNumber / numberOnScreen)
                       
                   }else if opration == 13 {//Multiplay
                       label.text = String(previousNumber * numberOnScreen)
                       
                   }else if opration == 14 {//Subtract
                       label.text = String(previousNumber - numberOnScreen)
                       
                   }
                   if opration == 15 {//Add
                       label.text = String(previousNumber + numberOnScreen)
                       
                   }
               }
           
               else if sender.tag == 11 {
                   label.text = ""
                   previousNumber = 0
                   numberOnScreen = 0
                   opration = 0
               }
        
    }
    override func viewDidLoad() {
        super.viewDidLoad()
  
    }
    var newOperation = true
        func AddNumerToInput(number:String){
            var textNumber = String (
                label.text!)
            if newOperation {
                textNumber = ""
                newOperation = false
            }
            textNumber = textNumber + number
            label.text = textNumber
    }
    
    @IBAction func BuDit(_ sender: Any) {
        
        AddNumerToInput(number: ".")
    }
    
}
