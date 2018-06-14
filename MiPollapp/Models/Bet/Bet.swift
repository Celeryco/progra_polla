//
//  Bet.swift
//  MiPollapp
//
//  Created by Eros Campos on 7/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
class Bet{
    var code: Int
    var teamOne: String
    var teamTwo: String
    
    init(code: Int, teamOne: String, teamTwo: String) {
        self.code = code
        self.teamOne = teamOne
        self.teamTwo = teamTwo
    }
}
