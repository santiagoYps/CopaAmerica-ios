//
//  MatchCell.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/23/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import UIKit

class MatchCell: UITableViewCell {

    @IBOutlet var date: UILabel!
    @IBOutlet var marcador: UILabel!
    @IBOutlet var grupo: UILabel!
    @IBOutlet var local: UILabel!
    @IBOutlet var visitante: UILabel!
    @IBOutlet var imgLocal: UIImageView!
    @IBOutlet var imgVisitante: UIImageView!
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
