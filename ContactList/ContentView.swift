//
//  ContentView.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
    let persons = Person.getPersons()
    
    @State private var searchName = ""
    
    var body: some View {
        TabView {
            PersonListView(persons: searchPersons)
                .tabItem {
                    Image(systemName: "person.2.circle")
                    Text("Contacts")
                }
            PersonSectionView(persons: searchPersons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
        .preferredColorScheme(.dark)
        .searchable(text: $searchName, prompt: "Search")
    }
    
    private var searchPersons: [Person] {
        if searchName.isEmpty {
            return persons
        } else {
            return persons.filter { $0.fullName.contains(searchName) }
        }
    }
}

#Preview {
    ContentView()
}
