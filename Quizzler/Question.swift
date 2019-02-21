//
//  Question.swift
//  Quizzler
//
//  Created by Luisa Santo on 2/21/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class Question {
    
    let questionText: String
    let answer: Bool
    
    init (question questionText: String, with answer: Bool) {
        self.questionText = questionText
        self.answer = answer
    }

}
