//
//  ContentView.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct ContentView: View {
    @StateObject private var viewModel = ContentViewModel()
    
    var body: some View {
        TabView {
            PersonListView(persons: viewModel.filteredPersons)
                .tabItem {
                    Image(systemName: "person.2.circle")
                    Text("Contacts")
                }
            PersonSectionView(persons: viewModel.filteredPersons)
                .tabItem {
                    Image(systemName: "phone")
                    Text("Numbers")
                }
        }
        .preferredColorScheme(.dark)
        .searchable(text: $viewModel.searchName, prompt: "Search")
    }
}

#Preview {
    ContentView()
}
