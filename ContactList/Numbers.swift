//
//  PersonSection.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct Numbers: View {
    let person: [Person]
    
    @State private var selectedPersons: UUID?
    
    var body: some View {
        NavigationStack {
            List(selection: $selectedPersons) {
                ForEach(person, id: \.self) { person in
                    Section(person.fullName) {
                        Label(person.phone, systemImage: "phone")
                        Label(person.email, systemImage: "mail")
                    }
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    Numbers(person: Person.getPersons())
}
