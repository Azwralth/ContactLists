//
//  PersonListViewViewModel.swift
//  ContactList
//
//  Created by Владислав Соколов on 21.05.2024.
//

import SwiftUI
import Observation

@Observable final class PersonListViewViewModel: ObservableObject {
    var persons: [Person] = []
    
    init(persons: [Person] = []) {
        self.persons = persons
    }
}
