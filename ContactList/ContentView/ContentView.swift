//
//  ContentView.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
    @State private var contentVM = ContentViewModel()
    
    var body: some View {
        NavigationStack {
            TabView {
                PersonListView(personListVM: PersonListViewViewModel(persons: contentVM.filteredPersons))
                    .tabItem {
                        Image(systemName: "person.2.circle")
                        Text("Contacts")
                    }
                PersonSectionView(personSectionVM: PersonSectionViewViewModel(persons: contentVM.filteredPersons))
                    .tabItem {
                        Image(systemName: "phone")
                        Text("Numbers")
                    }
            }
            .preferredColorScheme(.dark)
            .searchable(text: $contentVM.searchName, prompt: "Search")
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    ContentView()
}
