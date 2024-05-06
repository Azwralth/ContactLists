//
//  PersonSection.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct PersonSectionView: View {
    let persons: [Person]
    
    var body: some View {
            List(persons) { person in
                Section(person.fullName) {
                    Label(person.phone, systemImage: "phone")
                    Label(person.email, systemImage: "tray")
                }
            }
            .listStyle(.plain)
    }
}

#Preview {
    PersonSectionView(persons: Person.getPersons())
}
