//
//  TeamManager.swift
//  MiPollapp
//
//  Created by Eros Campos on 8/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
class TeamManager {
    var delegate: TeamsDelegate?
    
    func getTeams(){
        if let delegado = delegate{
            let session = URLSession(configuration: .default)
            if let url = URL(string: "http://api.football-data.org/v1/competitions/467/teams"){
                let task = session.dataTask(with: url, completionHandler: {(data: Data?, response, error) in
                    let jsonResponse = try? JSONSerialization.jsonObject(with: data!, options: [])
                    if let js = jsonResponse as? [String : Any]{
                        DispatchQueue.main.async {
                            delegado.onLoadedTeams(teams: self.readTeamsJson(data: js))
                        }
                    }
                })
                task.resume()
            }
        }
    }
    
    func readTeamsJson(data: [String:Any]) -> [Team]{
        var teamList: [Team] = []

        
        return teamList
    }
}
