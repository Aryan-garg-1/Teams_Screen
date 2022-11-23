//
//  Teams.swift
//  Microsoft Teams Screen(s)
//
//  Created by Aryan Garg on 15/11/22.
//

import SwiftUI

struct MenuItem: Identifiable {
    let id = UUID()
    var name: String
    var image: String?
    var nav: AnyView?
    var subMenuItems: [MenuItem]?
}




let listitems = [
    MenuItem(name: "Python", image: "Python",nav: AnyView(Channel_Views()), subMenuItems: [
        MenuItem(name: "General",nav: AnyView(all()))
    ]),
    
    MenuItem(name: "Astroinformatics", image: "Astroinformatics",nav: AnyView(Channel_Views()), subMenuItems: [
        MenuItem(name: "General",nav: AnyView(all())),
        MenuItem(name: "Project n.1",nav: AnyView(all()))
    ]),
    MenuItem(name: "Ricarica Operativa", image: "RO",nav: AnyView(Channel_Views()), subMenuItems:[
        MenuItem(name: "General",nav: AnyView(all()))
    ]),
    MenuItem(name: "Second Year Students 2022", image: "SYS2022",nav: AnyView(Channel_Views()), subMenuItems:[
        MenuItem(name: "General",nav: AnyView(all()))
    ]),
    MenuItem(name: "Machine Learning for Physics", image: "MCFP",nav: AnyView(Channel_Views()), subMenuItems:[
        MenuItem(name: "General",nav: AnyView(all())),
        MenuItem(name: "Lesson 1",nav: AnyView(all()))
    ]),
    MenuItem(name: "Artificial Intelligence and Quantum Computing", image: "AIQC",nav: AnyView(Channel_Views()), subMenuItems:[
        MenuItem(name: "General",nav: AnyView(all())),
        MenuItem(name: "Lesson 1",nav:AnyView(all())),
        MenuItem(name: "Lesson 2",nav:AnyView(all()))
    ])
]




struct Teams: View {
    
    @State public var TeamName = ""
    
    @State var SearchChannel = ""
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        
        NavigationStack {
            
            VStack{
                List(channel, children: \.subMenuItems) { item in
                    NavigationLink{
                        item.nav
                    } label: {
                        Image(item.image ?? item.name)
                            .resizable()
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                            .frame(width: 30,height: 30)
                        Text(item.name)
                            .font(.system(size: 20))
                            .frame(height: 40)
                    }

                }
                NavigationLink(destination: all()) {
                    Text("See all teams")
                }.buttonStyle(.borderless)
                
                Spacer()
                Spacer()
            }
            .padding(.horizontal, -15)
            .searchable(text: $SearchChannel)
            .toolbar{
                ToolbarItem(placement: .navigationBarLeading){
                    NavigationLink {
                        all()
                    } label: {
                        Image("Aryan")
                            .resizable()
                            .clipShape(Circle())
                            .frame(width: 30,height: 30)
                    }
                }
                ToolbarItem(placement: .navigation){
                    Text("Teams")
                        .bold()
                        .font(.system(size: 40))
                }
                ToolbarItem(placement: .navigationBarTrailing){
                    NavigationLink {
                        all()
                    } label: {
                        Image(systemName: "plus")
                    }.foregroundColor(Color(colorScheme == .dark ? .white:.black))
                }
            }
        }
        
    }
    
    var channel: [MenuItem] {
        if SearchChannel.isEmpty
        {
            return listitems
        }
        else{
            return listitems.filter {($0.name.contains(SearchChannel)
            )}
            
        }
    }
    
    
}

struct Teams_Previews: PreviewProvider {
    static var previews: some View {
        Teams()
    }
}
