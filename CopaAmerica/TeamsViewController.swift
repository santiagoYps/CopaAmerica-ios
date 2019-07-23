//
//  TeamsViewController.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/22/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import UIKit

class TeamsViewController: UIViewController {
    
    var txtPassName: String?
    var txtPassNote: String?
    var txtPassImage: String?
    
    var team: Teams?
    @IBOutlet weak var noteTextView: UITextView!
    @IBOutlet weak var nameTextView: UITextView!
    @IBOutlet weak var teamCover: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        if let txtPassName = txtPassName {
            navigationItem.title = txtPassName
            noteTextView.text = txtPassNote
            teamCover.image = UIImage(named: txtPassImage!)
        }
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
