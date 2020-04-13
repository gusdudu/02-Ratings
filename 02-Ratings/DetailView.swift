//
//  DetailView.swift
//  02-Ratings
//
//  Created by Gus on 22/03/2020.
//  Copyright © 2020 Gus. All rights reserved.
//

import SwiftUI

struct DetailView: View {
     
    /* sin objeto de estructura de Datos
    @State var title : String = "" // Variable local NO GLOBAL, referenciada del Textfield.
    @State var rating = 3.0 // Variable decimal
    @State var played = false // variable Bool
    */
    
    @State var videogame : Videogame
    @State var show = false
    
    
    
    
    var body: some View {
       
        List() {
            Section{
                VStack(alignment: .leading) {
                    DetailTitle(title: "Título")
                  
                    TextField("", text: $videogame.title)
                          // TextField("", text: $title)
                          /* HStack {
                     //cuando ponemos un $ accedes y modificas mientras q count:Int(rating) aqui solo lees de los @State
                                                 TextField("introduce texto", text: $title, onEditingChanged: { (true) in
                                                 print("se va a editar el texto")
                                                 }) {
                                                 print("edicion finalizada (se ha pulsado enter)")
                                                     print(self.$title)
                                                 }
                                                 }
                                                 */
                                                 
                                                 
                                                 
                                                 // Vinculado al objeto de donde esta base dedatos origenes de datos
                }
            }
            
            Section{
                VStack(alignment: .leading) {
                    DetailTitle(title: "Valoración")
                    HStack {
                        Spacer()
                        
                        /* SIn objeto a base de datos
                        Text(String(repeating: "☆",
                                    count:Int(rating))).font(.title).foregroundColor(.yellow) */
                        // objeto a base de datos y casting
                        Text(String(repeating: "☆",
                                    count:Int(videogame.rating))).font(.title).foregroundColor(.yellow)
                        Spacer()
                    }
                    /* SIn objeto a base de datos
                    Slider(value: $rating, in: 1...5, step: 1) */
                    
                    // objeto a base de datos
                    Slider(value: $videogame.rating, in: 1...5, step: 1)
                    
                }
                
                
                Section{
                    
                    
                    /* SIn objeto a base de datos
                    Toggle(isOn: $played)
                    {
                         //DetailTitle(title: "¿JUGADO?")
                        if title == "" {
                            DetailTitle(title: "¿JUGADO?")
                            
                        }else {
                            // DetailTitle(title: "¿ Has terminado: \(title)?")
                            Text("¿ Has terminado:")
                            Text("\(title)").bold().foregroundColor(.red)
                            Text("?")
                            
                        }
                    } */
                    
                    
                    // Con objeto a datos
                    Toggle(isOn: $videogame.played)
                    {
                         //DetailTitle(title: "¿JUGADO?")
                        if videogame.title == "" {
                            DetailTitle(title: "¿JUGADO?")
                            
                        }else {
                            // DetailTitle(title: "¿ Has terminado: \(title)?")
                            Text("¿ Has terminado:")
                            Text("\(videogame.title)").bold().foregroundColor(.red)
                            Text("?")
                            
                        }
                    }
                    
                }
            
                Section{
                     Button(action:  {
                        self.show = true
                     }){
                        // TODO: guardar info a la vuelta vista
                        
                        HStack {
                            Spacer()
                            Text("GUARDAR")
                            
                            Image(systemName: "gamecontroller")
                            Spacer()
                            
                        }
                        }.padding(.all, 10.0)
                        .background(Color.red.cornerRadius(12))
                        .foregroundColor(.white)
                    
                    
                }.sheet(isPresented: $show, content: { VideogamesList() })
                
                
                
                
           
}
            
        }
        .listStyle(GroupedListStyle())
        
          
        
        
    
    } 
        
        // FUNCIONES
        func sayHello() {
            print("Boton pulsado")
            
        } // fin funcion sayHello
        
        
        
    }
    



    /* HStack 2
    
     HStack {
            Text("Hola, que tal? te lo estas pasando en el curso de progrmacion de Gustavo cañamero Palomares")
            Spacer()
        Image(systemName: "flag")
            Text("Adios")
        }    }
    
    
    */
    
    
    
    /* HStack 3
    
     HStack {
                Text("Hola, que tal? te lo estas pasando en el curso de progrmacion de Gustavo cañamero Palomares").layoutPriority(1)
                       Spacer()
                  Image(systemName: "flag")
                      Text("Adios").layoutPriority(2)
         }    }
     
     HStack(alignment: .firstTextBaseline) {
         Text("Hola, que tal?").font(.largeTitle)
          //Spacer()
     Image(systemName: "flag")
         Text("Adios")
     }    }
     
     
     
     VStack(alignment: .leading) {
         Text("Hola, que tal?")
          //Spacer()
     Image(systemName: "flag")
         Text("Adios")
     }    }
     
     VStack {
         Text("Hola, que tal? te lo estas pasando en el curso de progrmacion de Gustavo cañamero Palomares xx")
          //Spacer()
     Image(systemName: "flag")
         Text("Adios")
     }    }
     
     
     ZStack {
         Text("Hola, que tal?").font(.largeTitle)
          //Spacer()
     Image(systemName: "flag").background(Color.blue)
         Text("Adios")
     }    }
     
     ZStack {
             Image("popcorn")
             .resizable()
                 .aspectRatio(contentMode: .fit)
             Text("I LOVE MOVIES").font(.largeTitle).foregroundColor(.white)
         }
         }
     
    
 Button(action: sayHello) {
     VStack {
         Text("Pulsame")
         Image(systemName: "gamecontroller")
     }
 }.padding(10.0)
     .background(Color.red.cornerRadius(12))
     .foregroundColor(.white) // Fin boton
 
 
 
 
    */
    
 
         
         
         // Text("Hello, World!")
         // Image("popcorn").resizable().aspectRatio(contentMode: .fit)
             // .edgesIgnoringSafeArea(.all)
         
 /* Imagenes San Francisco de Sistema son de Xcode SF SYMBOLS
 LINK-> developer.apple.com/design/human-interface-guidelines/sf-symbols/overview/
          hay una app MAC SF Symbols donde tienes todos los iconos
 */
         
         
        /*
         TextField("introduce texto", text: $title, onEditingChanged: { (true) in
         print("se va a editar el texto")
         }) {
         print("edicion finalizada (se ha pulsado enter)")
         } */
     
         
         /*
         VStack {
             Text(String(describing: $rating))
             
             
             Slider(value: $rating, in: 1...5, step: 1)
         } */
         /*
         Toggle(isOn: $played) {
             Text("He jugado a este juego")
         } */
    
    
    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
       
        /* sin objeto de estructura de Datos
        DetailView() */
        // Con objeto de estructura de datos
        DetailView(videogame: Videogame())
    }
}

struct DetailTitle: View {
    
    // Desde la extraccion a esta subview cambio AQUI parametros
    var title: String
    var body: some View {
        Text(title).font(.subheadline)
            .foregroundColor(.gray)
    }
}
