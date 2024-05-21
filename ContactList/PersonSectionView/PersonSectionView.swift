//
//  PersonSection.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct PersonSectionView: View {
    @ObservedObject var personSectionVM: PersonSectionViewViewModel
    
    var body: some View {
        List(personSectionVM.persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
    }
}

#Preview {
    PersonSectionView(personSectionVM: PersonSectionViewViewModel(persons: Person.getPersons()))
}
