//
//  Match.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/23/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import Foundation
import UIKit

class Matches: Codable {
    let matches: [Match]
    
    init(matches: [Match]) {
        self.matches = matches
    }
}

class Match: Codable {
    
    let matchID: String
    let stage: String
    let group: String
    let date: String
    let state: String
    let hour: String
    let local: String
    let visitor: String
    let score: String
    let time: String
    //let estadio: String
    
    
    init(matchID: String, stage: String, group: String, date: String, state: String, hour: String, local: String, visitor: String, score: String, time: String){//, estadio: String) {
        self.matchID = matchID
        self.stage = stage
        self.group = group
        self.date = date
        self.state = state
        self.hour = hour
        self.local = local
        self.visitor = visitor
        self.score = score
        self.time = time
        //self.estadio = estadio
    }
}
