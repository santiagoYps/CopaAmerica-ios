//
//  Match.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/22/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import Foundation
import UIKit

struct Book {
    //Defines the properties for each Book in the collection
    //static let defaultCover = UIImage(named: "book.jpg")!
    var title:String
    var author:String
    var rating:Double
    var isbn:String
    var notes:String
    //Use a default cover if none is set
    var cover:UIImage {
        get {
            return image ?? Book.defaultCover
        }
        set {
            image = newValue
        }
    }
    private var image:UIImage? = nil
    
    
    init(title:String,author:String,rating:Double,isbn:String,notes:String,cover:UIImage? = nil) {
        self.title = title
        self.author = author
        self.rating = rating
        self.isbn = isbn
        self.notes = notes
        self.image = cover
    }
}
