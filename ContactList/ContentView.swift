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
        NavigationStack {
            TabView {
                PersonListView(persons: person)
                    .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Contacts")
                    }
                PersonSectionView(persons: person)
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .navigationTitle("Contact List")
            .preferredColorScheme(.dark)
        }
    }
}

#Preview {
    ContentView()
}
