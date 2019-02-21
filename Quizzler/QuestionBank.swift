//
//  QuestionBank.swift
//  Quizzler
//
//  Created by Luisa Santo on 2/21/19.
//  Copyright © 2019 London App Brewery. All rights reserved.
//

import Foundation

class QuestionBank {
    
    var list  = [Question]()
    
    init() {
        addToList()
    }
    
    func addToList() {
        // Creating a quiz item and appending it to the list
        let item = Question(question: "Valentine\'s day is banned in Saudi Arabia.", with: true)
        
        // Add the Question to the list of questions
        list.append(item)
        
        // skipping one step and just creating the quiz item inside the append function
        list.append(Question(question: "A slug\'s blood is green.", with: true))
        
        list.append(Question(question: "Approximately one quarter of human bones are in the feet.", with: true))
        
        list.append(Question(question: "The total surface area of two human lungs is approximately 70 square metres.", with: true))
        
        list.append(Question(question: "In West Virginia, USA, if you accidentally hit an animal with your car, you are free to take it home to eat.", with: true))
        
        list.append(Question(question: "In London, UK, if you happen to die in the House of Parliament, you are technically entitled to a state funeral, because the building is considered too sacred a place.", with: false))
        
        list.append(Question(question: "It is illegal to pee in the Ocean in Portugal.", with: true))
        
        list.append(Question(question: "You can lead a cow down stairs but not up stairs.", with: false))
        
        list.append(Question(question: "Google was originally called \"Backrub\".", with: true))
        
        list.append(Question(question: "Buzz Aldrin\'s mother\'s maiden name was \"Moon\".", with: true))
        
        list.append(Question(question: "The loudest sound produced by any animal is 188 decibels. That animal is the African Elephant.", with: false))
        
        list.append(Question(question: "No piece of square dry paper can be folded in half more than 7 times.", with: false))
        
        list.append(Question(question: "Chocolate affects a dog\'s heart and nervous system; a few ounces are enough to kill a small dog.", with: true))
    }
}
