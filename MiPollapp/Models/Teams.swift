//
//  Team.swift
//  MiPollapp
//
//  Created by Eros Campos on 9/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
struct Teams : Codable {
    let name : String?
    let code : String?
    let crestUrl : String?
    
    enum CodingKeys: String, CodingKey {
        case name = "name"
        case code = "code"
        case crestUrl = "crestUrl"
    }
    
    init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        name = try values.decodeIfPresent(String.self, forKey: .name)
        code = try values.decodeIfPresent(String.self, forKey: .code)
        crestUrl = try values.decodeIfPresent(String.self, forKey: .crestUrl)
    }
    
    init(code: String, name: String, crestUrl: String) {
        self.code = code
        self.name = name
        self.crestUrl = crestUrl
    }
    
}
