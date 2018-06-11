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
    
    var teamList = [Teams]()

    func getTeams(){
        if let delegado = delegate{
            let session = URLSession(configuration: .default)
            if let url = URL(string: "http://api.football-data.org/v1/competitions/467/teams"){
                let task = session.dataTask(with: url, completionHandler: {(data: Data?, response, error) in
                    
                    let lista = try! JSONDecoder().decode(TeamBase.self, from: data!)
                    
                    for team in lista.teams!{
                        self.teamList.append(Teams(code: team.code!, name: team.name!, crestUrl: team.crestUrl!))
                    }
                    
                    self.teamList = self.teamList.sorted(by: {$0.name! < $1.name!})
                    
                    DispatchQueue.main.async {
                        delegado.onLoadedTeams(teams: self.teamList)
                    }
                })
                task.resume()
            }
        }
    }
}
