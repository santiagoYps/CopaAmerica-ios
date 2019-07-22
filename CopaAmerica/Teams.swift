//
//  Teams.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/22/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import Foundation

import UIKit

struct Teams {
    //Defines the properties for each Book in the collection
    static let defaultCover = UIImage(named: "colombia")!
    var name:String
    var imageTeam:String
    var note:String
    //Use a default cover if none is set
    var cover:UIImage {
        get {
            return image ?? Teams.defaultCover
        }
        set {
            image = newValue
        }
    }
    private var image:UIImage? = nil
    
    
    init(name:String,imageTeam:String,note:String,cover:UIImage? = nil) {
        self.name = name
        self.imageTeam = imageTeam
        self.note = note
        self.image = cover
    }
}
