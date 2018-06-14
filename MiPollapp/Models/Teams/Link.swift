//
//  Link.swift
//  MiPollapp
//
//  Created by Eros Campos on 13/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
struct Link: Codable {
    var players : TeamLink?
    
    private enum CodingKeys : String, CodingKey {
        case players = "players"
    }
}
