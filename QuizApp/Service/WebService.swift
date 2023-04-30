//
//  WebService.swift
//  QuizApp
//
//  Created by Kaan Kalaycıoğlu on 28.04.2023.
//

import Foundation


class WebService {
    var objectClass : object?
    init(objectClass: object? = nil) {
        self.objectClass = objectClass
    }
    public func getData () {
        let url = URL(string: "https://opentdb.com/api.php?amount=10")
        let session = URLSession.shared
        session.dataTask(with: url!) { [self] data, response, error in
            
            if let error = error {
                print(error.localizedDescription)
            }
            else if let data = data {
                do {
                    objectClass = try JSONDecoder().decode(object.self, from: data)
                    print("Response code : ",objectClass!.response_code,"  Correct Answer:",objectClass!.results.first?.correct_answer ?? "error")
                }catch{
                    print("error")
                }
            }
        }.resume()
    }
    
    

    
    
}
