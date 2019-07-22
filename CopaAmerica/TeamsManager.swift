//
//  TeamsManager.swift
//  CopaAmerica
//
//  Created by Enfasis on 7/22/19.
//  Copyright © 2019 dufenshmir malvados y asociados. All rights reserved.
//

import Foundation
//Class to handle operations over the books collection
class TeamsManager {
    
    
    private lazy var teams:[Teams] = self.loadTeams()
    
    var teamsCount:Int {return teams.count}
    
    
    func getTeams(at index:Int)->Teams {
        return teams[index]
    }
    
    //Return the books collection
    private func loadTeams()->[Teams] {
        //for now, loads a dummy hard-coded books collection
        return sampleTeams()
    }
    
    //Add a book to the collection
    func addBook(_ book:Teams) {
        teams.append(book)
    }
    
    //Return a dummny collection of books according to Book structure
    private func sampleTeams()->[Teams] {
        return [
            Teams(name: "Argentina", imageTeam: "argentina", note: "11"),
            Teams(name: "Bolivia", imageTeam: "bolivia", note: "12"),
            Teams(name: "Brasil", imageTeam: "brasil", note: "12"),
            Teams(name: "Chile", imageTeam: "chile", note: "12"),
            Teams(name: "Colombia", imageTeam: "colombia", note: "12"),
            Teams(name: "Ecuador", imageTeam: "ecuador", note: "12"),
            Teams(name: "Japón", imageTeam: "japon", note: "12"),
            Teams(name: "Paraguay", imageTeam: "paraguay", note: "12"),
            Teams(name: "Perú", imageTeam: "peru", note: "12"),
            Teams(name: "Qatar", imageTeam: "qatar", note: "12"),
            Teams(name: "Uruguay", imageTeam: "uruguay", note: "12"),
            Teams(name: "Venezuela", imageTeam: "venezuela", note: "12")
                ]
        
    }
}
