//
//  ViewController.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/9/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    

    //@IBOutlet weak var viewContainer: UIView!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    @IBOutlet weak var matchTableView: UITableView!
    
    let partidosG = ["partido 1", "partido 2"]
    let partidosE = ["partido 3", "partido 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        matchTableView.delegate = self
        matchTableView.dataSource = self
        // Do any additional setup after loading the view.
        /*grupos = GruposViewController().view
        eliminatorias = EliminatoriasViewController().view
        viewContainer.addSubview(grupos)
        viewContainer.addSubview(eliminatorias)
        viewContainer.bringSubviewToFront(grupos)*/
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            return partidosG.count
            //viewContainer.bringSubviewToFront(grupos)
        case 1:
            return partidosE.count
            //viewContainer.bringSubviewToFront(eliminatorias)
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "matchCell", for: indexPath)
        switch segmentedControl.selectedSegmentIndex {
        case 0:
            cell.textLabel?.text = partidosG[indexPath.row]
        default:
            cell.textLabel?.text = partidosE[indexPath.row]
        }
        return cell
    }


    @IBAction func switchViewControl(_ sender: UISegmentedControl) {
        matchTableView.reloadData()
        /*switch sender.selectedSegmentIndex {
        case 0:
            //viewContainer.bringSubviewToFront(grupos)
            break
        case 1:
            //viewContainer.bringSubviewToFront(eliminatorias)
            break
        default:
            break
        }*/
    }
}

