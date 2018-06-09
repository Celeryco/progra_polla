//
//  Player.swift
//  MiPollapp
//
//  Created by Eros Campos on 7/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation

class Player {
    var name: String
    var position: String
    var jerseyNumber: Int
    var dateOfBirth: Date
    var nationality: String
    var contractUntil: Date
    
    init(name: String, position: String, jerseyNumber: Int, birth: Date, nationality: String, contractUntil: Date) {
        self.name = name
        self.position = position
        self.jerseyNumber = jerseyNumber
        self.dateOfBirth = birth
        self.nationality = nationality
        self.contractUntil = contractUntil
    }
    
    
}

