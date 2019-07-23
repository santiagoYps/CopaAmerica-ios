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
    
    final let url = URL(string: "http://192.168.0.101/copaAmerica/GroupMatches.json")
    private var matches = [Match]()
    
    let partidosG = ["partido 1", "partido 2"]
    let partidosE = ["partido 3", "partido 4"]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        downloadJson()
        matchTableView.tableFooterView = UIView()
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
            return matches.count
            //viewContainer.bringSubviewToFront(grupos)
        case 1:
            return matches.count
            //viewContainer.bringSubviewToFront(eliminatorias)
        default:
            break
        }
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell", for: indexPath)
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "MatchCell") as? MatchCell else { return UITableViewCell() }
        print(matches.count)
        
        cell.local.text = matches[indexPath.row].local
        cell.imgLocal.image = UIImage(named: changeName(name: matches[indexPath.row].local))
        cell.visitante.text = matches[indexPath.row].visitor
        cell.imgVisitante.image = UIImage(named: changeName(name: matches[indexPath.row].visitor))
        cell.marcador.text = matches[indexPath.row].score
        cell.grupo.text = "Grupo "+matches[indexPath.row].group
        
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
    
    func downloadJson() {
        guard let downloadURL = url else { return }
        URLSession.shared.dataTask(with: downloadURL) { data, urlResponse, error in
            guard let data = data, error == nil, urlResponse != nil else {
                print("something is wrong")
                return
            }
            print("downloaded")
            print(data)
            do
            {
                let decoder = JSONDecoder()
                let downloadedMatches = try decoder.decode(Matches.self, from: data)
                self.matches = downloadedMatches.matches
                DispatchQueue.main.async {
                    self.matchTableView.reloadData()
                }
            } catch {
                print("something wrong after downloaded")
            }
            }.resume()
    }
    func changeName(name:String) -> String{
        if name == "Argentina"{return "argentina"}
        else if name == "Bolivia"{return "bolivia"}
        else if name == "Brasil"{return "brasil"}
        else if name == "Chile"{return "chile"}
        else if name == "Colombia"{return "colombia"}
        else if name == "Ecuador"{return "ecuador"}
        else if name == "Japón"{return "japon"}
        else if name == "Paraguay"{return "paraguay"}
        else if name == "Perú"{return "peru"}
        else if name == "Catar"{return "qatar"}
        else if name == "Uruguay"{return "uruguay"}
        else if name == "Venezuela"{return "venezuela"}
        else {return ""}
    }
}

