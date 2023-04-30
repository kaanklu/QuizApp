//
//  Model.swift
//  QuizApp
//
//  Created by Kaan Kalaycıoğlu on 27.04.2023.
//

import Foundation

struct object : Decodable {
    
    let response_code : Int
    let results : [myResults]
    
}

struct myResults : Decodable {
    
    let category : String
    let type : String
    let difficulty : String
    let question : String
    let correct_answer : String
    let incorrect_answers : [String]
    
}
