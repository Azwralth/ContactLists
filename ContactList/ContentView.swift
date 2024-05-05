//
//  ContentView.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
    let person = Person.getPersons()
    
    var body: some View {
        TabView {
            PersonList(person: person)
                .tabItem {
                    Image(systemName: "person.circle")
                    Text("Contacts")
                }
            Numbers(person: person)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
    }
}

#Preview {
    ContentView()
}
