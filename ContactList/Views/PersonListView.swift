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
                        .fill(Color.random())
                        .frame(width: 50, height: 50)
                    Text("\(person.firstName.prefix(1))")
                }
                Text("\(person.fullName)")
            }
        }
        .listStyle(.plain)
    }
}

extension Color {
    static func random() -> Color {
        let red = Double.random(in: 0...1)
        let green = Double.random(in: 0...1)
        let blue = Double.random(in: 0...1)
        return Color(red: red, green: green, blue: blue)
    }
}

#Preview {
    PersonListView(persons: Person.getPersons())
}
