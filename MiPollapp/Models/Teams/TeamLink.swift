//
//  TeamLink.swift
//  MiPollapp
//
//  Created by Eros Campos on 13/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
struct TeamLink: Codable {
    var href : String?
    
    private enum CodingKeys : String, CodingKey {
        case href = "href"
    }
}
