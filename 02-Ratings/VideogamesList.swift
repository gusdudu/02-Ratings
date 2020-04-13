//
//  VideogamesList.swift
//  02-Ratings
//
//  Created by Gus on 08/04/2020.
//  Copyright © 2020 Gus. All rights reserved.
//

import SwiftUI

struct VideogamesList: View {
  
     // @State private var isPresented = false
     @ObservedObject var vgStore = VideogameStore()
   
    /*var videogames : [Videogame] = [Videogame(), Videogame(), Videogame(), Videogame()
    ]
       
    
   var body: some View {
       NavigationView {
           List {
               
           
            Button(action: {
                   self.isPresented.toggle()
               }) {
                       Text("Añadir juego").foregroundColor(.blue)
               }
               ForEach(videogames) { videogame in
                   NavigationLink(destination: DetailView(videogame: videogame)) {
                       Text(videogame.title)
                   }
               }
           }.sheet(isPresented: $isPresented) {
               DetailView(videogame: Videogame())
           }
       }
   } */
    
    var body: some View {
        NavigationView{
            List {
            
          PresentationMode(destination: DetailView(vgStore: self.vgStore, videogame: Videogame())) {
                    Text("Añadir videojuego").foregroundColor(.blue)
                }
                    
                  
                
                
             
               
                ForEach(vgStore.videogames) { vg in
                    NavigationLink(destination: DetailView(vgStore: self.vgStore, vg)){
                        Text(vg.title)
                    }
                }
            }
        }
    }

    
    
    
    
    
    
    
    

    
struct VideogamesList_Previews: PreviewProvider {
    static var previews: some View {
        VideogamesList()
    }
}
}
