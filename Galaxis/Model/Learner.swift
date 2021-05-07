//
//  Learner.swift
//  Galaxis
//
//  Created by Adhitya Laksamana Bayu Adrian on 03/05/21.
//

import Foundation


struct Learner: Decodable, Hashable{
    let nama, shortDescription, aboutMe: String
    let expertise,hobby,interest: String
    let imageName, shift: String
    let role: String

//    static let example = Learner(nama: "Adhitya Laksamana Bayu Adrian", shortDescription: "Many Faced God", aboutMe: "This is my bio", expertise: ["Chess","Python"], hobby: ["Games","Movies"], interest: ["Design"], imageName: "Adhitya_Laksamana", shift: "Morning", role: "Tech")
    static let example = Learner(nama: "Adhitya Laksamana Bayu Adrian", shortDescription: "Many Faced God", aboutMe: "This is my bio", expertise: "Chess,Python", hobby: "Games,Movies", interest: "Design", imageName: "Adhitya_Laksamana", shift: "Morning", role: "Tech")
}

//struct Learner: Decodable {
//    public var name, shortDescription, aboutMe: String
//    public var expertise,hobby,interest: [String]
//    public var imageName, shift: String
//    public var role: String
//
//    enum CodingKeys: String, CodingKey{
//        case name = "nama"
//        case shortDescription = "shortDescription"
//        case aboutMe = "aboutMe"
//        case expertise = "expertise"
//        case hobby = "hobby"
//        case interest = "interest"
//        case imageName = "imageName"
//        case shift = "shift"
//        case role = "role"
//
//    }
//    static let example = Learner(name: "Adhitya Laksamana Bayu Adrian", shortDescription: "Many Faced God", aboutMe: "This is my bio", expertise: ["Chess","Python"], hobby: ["Games","Movies"], interest: ["Design"], imageName: "Adhitya_Laksamana", shift: "Morning", role: "Tech")
//}
