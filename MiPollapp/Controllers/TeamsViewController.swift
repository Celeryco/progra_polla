//
//  TeamsViewController.swift
//  MiPollapp
//
//  Created by Eros Campos on 8/06/18.
//  Copyright © 2018 ulima. All rights reserved.
//

import UIKit

class TeamsViewController: UITableViewController, TeamsDelegate {
    var teamList: [Team] = []
    
    func onLoadedTeams(teams: [Team]) {
        self.teamList = teams
        self.tableView.reloadData()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        let teamManager = TeamManager()
        teamManager.delegate = self
        teamManager.getTeams()
    }
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return teamList.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "TeamCell", for: indexPath)
        
        cell.textLabel?.text = teamList[indexPath.row].name
        cell.imageView?.setImageFromURl(stringImageUrl: teamList[indexPath.row].flag)
        
        return cell
    }

    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print(teamList[indexPath.row].name)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */
}
