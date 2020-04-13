//
//  Videogames.swift
//  02-Ratings
//
//  Created by Gus on 08/04/2020.
//  Copyright © 2020 Gus. All rights reserved.
//

import SwiftUI
import Combine

struct Videogame : Identifiable {
    var id: UUID = UUID() // como una clave primaria de Bases de datos y no se puede cambiar nombre id de la variable
    
    
    // Variables
    var title: String = "Farcry"
    var rating: Double = 3.0
    var played: Bool = false
}

class VideogameStore : ObservableObject {
    let didChange = PassthroughSubject<Void, Never>()
    
    var videogames : [Videogame] {
        didSet{
            didChange.send()
        }
    }
    
    init(){
        var vg1 = Videogame()
        vg1.title = "Farcry 5"
        vg1.played = true
        vg1.rating = 4
        
        var vg2 = Videogame()
        vg2.title = "Assassin´s Creed Origin"
        
        var vg3 = Videogame()
        vg3.title = "Resident Evil 2"
        vg3.played = true
        
        videogames = [vg1, vg2, vg3]
        
        
    }
    
    func AddVideogame(videogame:Videogame){
        videogames.append(videogame)
    }
}
    
    
    
    
    
    
    

