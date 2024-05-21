//
//  PersonDetailViewViewModel.swift
//  ContactList
//
//  Created by Владислав Соколов on 21.05.2024.
//

import SwiftUI
import Observation

@Observable final class PersonDetailViewViewModel: ObservableObject {
    var person: Person
    
    init(person: Person) {
        self.person = person
    }
}
