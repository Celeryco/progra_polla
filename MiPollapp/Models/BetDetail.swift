//
//  BetDetail.swift
//  MiPollapp
//
//  Created by Eros Campos on 7/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
class BetDetail{
    var user: String
    var gameId: Int
    var winner: String
    
    var goalsTeamOne: String
    var goalsteamTwo: String
    
    init(user: String, gameId: Int, winner: String , goals_1: String, goals_2: String) {
        self.user = user
        self.gameId = gameId
        self.winner = winner
        self.goalsTeamOne = goals_1
        self.goalsteamTwo = goals_2
    }
}
