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
    func addTeams(_ team:Teams) {
        teams.append(team)
    }
    
    //Return a dummny collection of books according to Book structure
    private func sampleTeams()->[Teams] {
        return [
            Teams(name: "Argentina", imageTeam: "argentina", imageTeam2: "argentina2", note: "La Selección Argentina es la segunda más ganadora en la CONMEBOL Copa América. Con 14 títulos en su historial, la albiceleste siempre pone a vibrar a sus hinchas, pues es una candidata para ganar el torneo continental. Además de los 14 trofeos conseguidos, los argentinos tienen marcas expresivas e históricas en el torneo. Son los mayores goleadores con un total de 455 tantos marcados y tienen la mayor goleada con un 12-0 contra Ecuador, en 1942. En toda la historia del torneo, los ‘gauchos’ tienen 119 victorias, más que cualquier otro equipo, y solo 39 derrotas, la mejor selección en este apartado. El país también fue sede de la competencia en nueve oportunidades."),
            Teams(name: "Bolivia", imageTeam: "bolivia", imageTeam2: "bolivia2", note: "La actuación más importante de la historia de la “La Verde” en la Copa América fue en el año 1963, cuando la competencia se disputó por primera vez en Bolivia y en ese entonces el torneo todavía era denominado Campeonato Sudamericano de Fútbol. Además del gran fútbol desplegado y teniendo como aliada a la altura de La Paz, la selección boliviana se impuso en el torneo, un acontecimiento que hizo vibrar los cimientos del país."),
            Teams(name: "Brasil", imageTeam: "brasil", imageTeam2: "brasil2", note: "Luego de 30 años, la CONMEBOL Copa América regresa a Brasil. El equipo dirigido por Tité buscará mantener la tradición que indica que cada vez que la selección ‘Auriverde’ fue anfitriona del torneo, fue el equipo que terminó alzando el trofeo. Esto sucedió las cuatro veces anteriores que el certamen se disputó en el país: 1919, 1922, 1949 y 1989."),
            Teams(name: "Chile", imageTeam: "chile", imageTeam2: "chile2", note: "Conocida como “La Roja”, la selección chilena es la actual bicampeona de la CONMEBOL Copa América, habiendo levantado el trofeo en sus últimas dos ediciones (Chile 2015 y Estados Unidos 2016). Estos son sus dos únicos títulos en la competencia."),
            Teams(name: "Colombia", imageTeam: "colombia", imageTeam2: "colombia2", note: "Una generación de oro ha puesto a la Selección Colombia de nuevo en el radar del fútbol mundial, tras unas destacadas participaciones en los Campeonatos Mundial de la FIFA Brasil 2014 y Rusia 2018, el equipo cafetero buscará el título en la CONMEBOL Copa América, el mismo que ganó hace 19 años en Bogotá."),
            Teams(name: "Ecuador", imageTeam: "ecuador", imageTeam2: "ecuador2", note: "La Selección de Ecuador, de nuevo bajo el mando del entrenador colombiano Hernán Darío Gómez, buscará en Brasil su primer título de la Copa América, torneo en el que su mejor participación fue en la edición de 1993, terminando en el cuarto puesto."),
            Teams(name: "Japón", imageTeam: "japon", imageTeam2: "japon2", note: "La selección japonesa es una de las selecciones más tradicionales de Asia, siendo la mayor campeona de su continente con cuatro títulos. En su más reciente participación en la Copa de Asia, el pasado mes de enero, los nipones cayeron en la final del torneo contra la otra invitada a la CONMEBOL Copa América, la Selección de Qatar."),
            Teams(name: "Paraguay", imageTeam: "paraguay", imageTeam2: "paraguay2", note: "La selección paraguaya es dos veces ganadora de la Copa América. Levantó el trofeo del torneo en 1953 y 1979. Estos dos títulos, junto con la medalla de plata en los Juegos Olímpicos Atenas 2004, son los mayores logros del combinado guaraní."),
            Teams(name: "Perú", imageTeam: "peru", imageTeam2: "peru2", note: "La Selección Inca viene dando buenos resultados en los últimos años, fruto de tener una generación de buenos jugadores, de buena técnica y talento, liderados por el entrenador argentino Ricardo Gareca. Uno de los mayores y recientes logros de esta selección, fue la clasificación a la Copa Mundial de la FIFA, disputada en Rusia en 2018. Un torneo al que Perú no clasificaba hacía 36 años."),
            Teams(name: "Qatar", imageTeam: "qatar", imageTeam2: "qatar2", note: "La flamante campeona de la reciente Copa de Asia, la Selección de Qatar, jugará la CONMEBOL Copa América Brasil 2019, en calidad de invitada, y será su debut en el torneo sudamericano."),
            Teams(name: "Uruguay", imageTeam: "uruguay", imageTeam2: "uruguay2", note: "La Selección de Uruguay es la mayor vencedora de la Copa América: con 15 títulos. Fue la Celeste la primera ganadora del torneo, en 1916, y su última consecución del título la logró en el 2011, en el torneo que se disputó en Argentina, venciendo a Paraguay por 3-0."),
            Teams(name: "Venezuela", imageTeam: "venezuela", imageTeam2: "venezuela2", note: "Venezuela es una de las dos selecciones de CONMEBOL que nunca ganaron la Copa América; la otra es Ecuador. Si embargo, ‘La Vino Tinto’, apodada así por el color de su uniforme titular, muestra evolución en su fútbol a partir del año 2.000, añadiendo técnica y organización. No es casualidad que, en el 2017, la Selección Venezuela Sub-20 haya terminado subcampeona en el Mundial de la categoría disputado en Corea del Sur.")
                ]
        
    }
}
