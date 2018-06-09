//
//  Team.swift
//  MiPollapp
//
//  Created by Eros Campos on 7/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation

class TeamBase : Codable {
    let teams : [Teams]?
    
    enum CodingKeys: String, CodingKey {
        case teams = "teams"
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        teams = try values.decodeIfPresent([Teams].self, forKey: .teams)
    }
}

