//
//  TeamsTableViewController.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/16/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import UIKit

class TeamsTableViewController: UITableViewController {
    
    //var teams: [String] = []
    //var teamsImg: [String] = []
    var teamsManager:TeamsManager = TeamsManager()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //teams = ["Argentina", "Bolivia", "Brasil" , "Chile", "Colombi", "Ecuador", "Japón" , "Paraguay" , "Perú", "Qatar", "Uruguay", "Venezuela"]
        
        //teamsImg = ["argentina", "bolivia", "brasil" , "chile", "colombia", "ecuador", "japon" , "paraguay" , "peru", "qatar", "uruguay", "venezuela"]

    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    //Returns the number of rows in the table section
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return teamsManager.teamsCount
    }
    
    //Sets the cell look and feel and data in the table row
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "teamsCell", for: indexPath)
        
        let team = teamsManager.getTeams(at:indexPath.row)
        
        //Set the text, label an image for each according to the format design we chose for the cell
        cell.textLabel?.text = team.name
        cell.imageView?.image = UIImage(named: team.imageTeam)
        
        //cell.textLabel?.text = teams[indexPath.row]
        //cell.imageView!.image = UIImage(named: teamsImg[indexPath.row])!
        return cell
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "toViewTeamSegue"{
            if let indexPath = tableView.indexPathForSelectedRow{
                let team = teamsManager.getTeams(at:indexPath.row)
                let destVC = segue.destination as! TeamsViewController
                destVC.txtPassName = team.name
                destVC.txtPassNote = team.note
                destVC.txtPassImage = team.imageTeam2
            }
        }
    }

    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
