//
//  PersonDetailView.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct PersonDetailView: View {
    let person: Person
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                .frame(width: 150, height: 150)
                Spacer()
            }
            VStack(alignment: .leading, spacing: 20) {
                Label("\(person.phone)", systemImage: "phone")
                Label("\(person.email)", systemImage: "mail")
            }
        }
        .navigationTitle("\(person.fullName)")
    }
}

#Preview {
    PersonDetailView(person: Person(firstName: "Alex", lastName: "Alexov", email: "@mail.ru", phone: "123"))
}
