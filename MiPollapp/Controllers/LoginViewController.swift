//
//  ViewController.swift
//  MiPollapp
//
//  Created by admin on 6/6/18.
//  Copyright © 2018 ulima. All rights reserved.
//
import Foundation
import UIKit

class LoginViewController: UIViewController {

    @IBOutlet var input_cod: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func start(_ sender: UIButton) {
        let vcd = storyboard?.instantiateViewController(withIdentifier: "TabVC") as! TabBarController
        
        if (input_cod.text?.isEmpty)! {
            let alert = UIAlertController(title: "Alerta", message: "Debe ingresar un nombre", preferredStyle: UIAlertControllerStyle.alert)
            
            alert.addAction(UIAlertAction(title: NSLocalizedString("OK", comment: "Default action"), style: .default, handler: {_ in
                NSLog("The \"OK\" alert occured.")}))
            
            self.present(alert, animated: true, completion: nil)
        }else{
            vcd.user = input_cod.text!
            present(vcd, animated: true, completion: nil)
        }
    }
    
    
}

