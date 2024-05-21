//
//  PersonDetailView.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import SwiftUI

struct PersonDetailView: View {
    @ObservedObject var personDetailVM: PersonDetailViewViewModel
    
    var body: some View {
        List {
            HStack {
                Spacer()
                Image(systemName: "person.fill")
                    .resizable()
                    .frame(width: 150, height: 150)
                Spacer()
            }
            Label(personDetailVM.person.phone, systemImage: "phone")
            Label(personDetailVM.person.email, systemImage: "tray")
        }
        .navigationTitle(personDetailVM.person.fullName)
    }
}

#Preview {
    PersonDetailView(personDetailVM: PersonDetailViewViewModel(person: Person.getPersons().first!))
}
