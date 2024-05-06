//
//  PersonList.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct PersonListView: View {
    
    let persons: [Person]
    
    var body: some View {
        NavigationStack {
            List(persons) { person in
                NavigationLink(destination: PersonDetailView(person: person)) {
                    ZStack {
                        Circle()
                            .fill(.orange)
                            .frame(width: 50, height: 50)
                        Text(person.firstName.prefix(1))
                    }
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
            .navigationTitle("Contact List")
        }
    }
}

#Preview {
    PersonListView(persons: Person.getPersons())
}
