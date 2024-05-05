//
//  Person.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import Foundation

struct Person: Identifiable {
    let id = UUID()
 
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    
    var fullName: String {
        "\(firstName) \(lastName)"
    }
    
    static func getPersons() -> [Person] {
        let user = DataStore()
        var persons: [Person] = []
        
        let shuffleNames = user.firstNames.shuffled()
        let shuffleLastNames = user.lastNames.shuffled()
        let shuffleEmails = user.emails.shuffled()
        let shufflePhones = user.phoneNumbers.shuffled()
        
        for index in 0..<user.firstNames.count {
            let person = Person(
                firstName: shuffleNames[index],
                lastName: shuffleLastNames[index],
                email: shuffleEmails[index],
                phone: shufflePhones[index]
            )
            persons.append(person)
        }
        return persons
    }
}

