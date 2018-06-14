//
//  PlayerDetailViewController.swift
//  MiPollapp
//
//  Created by Eros Campos on 8/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import UIKit

class PlayerDetailViewController: UIViewController {

    @IBOutlet var positionLabel: UILabel!
    
    @IBOutlet var jerseyNumberLabel: UILabel!
    
    @IBOutlet var birthdayLabel: UILabel!
    
    var position:String = ""
    var birthday:String = ""
    var number:String = ""
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        positionLabel.text = position
        birthdayLabel.text = birthday
        jerseyNumberLabel.text = number
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
