//
//  Player.swift
//  MiPollapp
//
//  Created by Eros Campos on 7/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation

struct Player : Codable {
    let name : String?
    let position : String?
    let jerseyNumber : Int?
    let dateOfBirth : String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case position = "position"
        case jerseyNumber = "jerseyNumber"
        case dateOfBirth = "dateOfBirth"
    }
    
    init(name: String, position: String, jerseyNumber: Int, dateOfBirth: String) {
        self.name = name
        self.position = position
        self.jerseyNumber = jerseyNumber
        self.dateOfBirth = dateOfBirth
    }
}

