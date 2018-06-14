//
//  Team.swift
//  MiPollapp
//
//  Created by Eros Campos on 13/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
struct Team : Codable {
    let name: String?
    let flag: String?
    let team_link: Link?
    
    private enum CodingKeys: String, CodingKey {
        case name = "name"
        case flag = "crestUrl"
        case team_link = "_links"
    }
    
    init(name: String, flag: String, players_link: Link) {
        self.name = name
        self.flag = flag
        self.team_link = players_link
    }
}
