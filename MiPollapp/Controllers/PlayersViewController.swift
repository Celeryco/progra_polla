//
//  PlayersViewController.swift
//  MiPollapp
//
//  Created by Eros Campos on 8/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import UIKit

class PlayersViewController: UITableViewController, PlayersDelegate {

    var player_url: String = ""
    
    var playerList: [Player] = []
    
    func onLoadedPlayers(players: [Player]) {
        self.playerList = players
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let playerManager = PlayerManager()
        playerManager.delegate = self
        playerManager.getPlayers(url_players: player_url)
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return playerList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "PlayerCell", for: indexPath) as! PlayersTableViewCell
        
        cell.playerName?.text = playerList[indexPath.row].name!
        
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 75
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let vc = storyboard?.instantiateViewController(withIdentifier: "PlayerDetailViewController") as? PlayerDetailViewController
        
        vc?.position = playerList[indexPath.row].position!
        vc?.number = String(playerList[indexPath.row].jerseyNumber!)
        vc?.birthday = playerList[indexPath.row].dateOfBirth!
        
        
        //TODO - traspasar codigo para el query del siguiente controller
        
        self.navigationController?.pushViewController(vc!, animated: true)
    }
}
