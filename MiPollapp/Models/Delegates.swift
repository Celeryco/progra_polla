//
//  Delegates.swift
//  MiPollapp
//
//  Created by Eros Campos on 8/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
import UIKit

protocol TeamsDelegate {
    func onLoadedTeams(teams: [Team])
}

// Codigo sacado de https://stackoverflow.com/questions/29472149/how-to-display-an-image-using-url
extension UIImageView{
    func setImageFromURl(stringImageUrl url: String){
        
        if let url = NSURL(string: url) {
            if let data = NSData(contentsOf: url as URL) {
                self.image = UIImage(data: data as Data)
            }
        }
    }
}
