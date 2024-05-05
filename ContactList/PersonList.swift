//
//  PersonList.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct PersonList: View {
    let person: [Person]
    
    var body: some View {
        NavigationStack {
            List(person, id: \.self) { person in
                NavigationLink("\(person.fullName)") {
                    PersonDetailView(person: person)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    PersonList(person: Person.getPersons())
}
