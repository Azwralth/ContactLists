//
//  ContentViewViewModel.swift
//  ContactList
//
//  Created by Владислав Соколов on 06.05.2024.
//

import Foundation

final class ContentViewModel: ObservableObject {
    @Published var searchName = ""
    
    let persons = Person.getPersons()
    
    var filteredPersons: [Person] {
        if searchName.isEmpty {
            return persons
        } else {
            return persons.filter { $0.fullName.localizedStandardContains(searchName) }
        }
    }
}
