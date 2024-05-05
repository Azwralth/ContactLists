//
//  Person.swift
//  ContactList
//
//  Created by Владислав Соколов on 05.05.2024.
//

import Foundation
import SwiftUI

struct Person: Identifiable {
    let id = UUID()
 
    let firstName: String
    let lastName: String
    let email: String
    let phone: String
    let color: Color
    
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
                phone: shufflePhones[index],
                color: Color(
                    red: Double.random(in: 0...1),
                    green: Double.random(in: 0...1),
                    blue: Double.random(in: 0...1)
                )
            )
            persons.append(person)
        }
        return persons
    }
}

