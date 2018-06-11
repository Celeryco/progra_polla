//
//  TeamsTableViewCell.swift
//  MiPollapp
//
//  Created by Eros Campos on 10/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import UIKit

class TeamsTableViewCell: UITableViewCell {

    @IBOutlet var rankingLabel: UILabel!
    
    @IBOutlet var pointsLabel: UILabel!
    
    @IBOutlet var flagImage: UIImageView!
    
    @IBOutlet var nameLabel: UILabel!  
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
