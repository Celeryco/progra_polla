//
//  PlayersTableViewCell.swift
//  MiPollapp
//
//  Created by Eros Campos on 13/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import UIKit

class PlayersTableViewCell: UITableViewCell {

    @IBOutlet var playerName: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
