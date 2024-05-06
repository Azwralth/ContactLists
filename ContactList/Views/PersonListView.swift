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
            List(persons) { person in
                NavigationLink(destination: PersonDetailView(person: person)) {
                    ZStack {
                        Circle()
                            .fill(Color.random)
                            .frame(width: 50, height: 50)
                        Text(person.firstName.prefix(1))
                    }
                    Text(person.fullName)
                }
            }
            .listStyle(.plain)
    }
}

extension Color {
    static var random: Color {
        return Color(red: .random(in: 0...1),
                     green: .random(in: 0...1),
                     blue: .random(in: 0...1))
    }
}

#Preview {
    PersonListView(persons: Person.getPersons())
}
