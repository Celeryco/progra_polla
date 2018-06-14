//
//  PlayerManager.swift
//  MiPollapp
//
//  Created by Eros Campos on 13/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import Foundation
class PlayerManager {
    var delegate: PlayersDelegate?
    
    var playerList = [Player]()
    
    func getPlayers(url_players: String){
        if let delegado = delegate{
            let session = URLSession(configuration: .default)
            if let url = URL(string: url_players){
                let task = session.dataTask(with: url, completionHandler: {(data: Data?, response, error) in
                    
                    let lista = try! JSONDecoder().decode(PlayerBase.self, from: data!)

                    //ARREGLAR ERROR POR SI ENCUENTRA NIL EN JERSEYNUMBER
                    for player in lista.players{
                        if let jersey = player.jerseyNumber{
                            self.playerList.append(Player(name: player.name!, position: player.position!, jerseyNumber: jersey, dateOfBirth: player.dateOfBirth!))
                        }else{
                             self.playerList.append(Player(name: player.name!, position: player.position!, jerseyNumber: 0, dateOfBirth: player.dateOfBirth!))
                        }
                    }

                    self.playerList = self.playerList.sorted(by: {$0.name! < $1.name!})

                    DispatchQueue.main.async {
                        delegado.onLoadedPlayers(players: self.playerList)
                    }
                })
                task.resume()
            }
        }
    }
}
