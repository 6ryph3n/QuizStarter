//
//  Trivia.swift
//  TrueFalseStarter
//
//  Created by Steven Beckham on 1/30/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation
var availableQuestions: [Facts] = []

// Create a struct to model the data
struct Facts {
    let fact: String
    let possibleAnswers: [String]
    let correctAnswer: Int
    var isAvailable: Bool
}

// Facts and true/false answers
    var trivia: [Facts] = [
        Facts(fact: "Which of the following countries has the most residents?", possibleAnswers: ["Nigeria", "Russia", "Iran", "Vietnam"], correctAnswer: 1, isAvailable: true),
        Facts(fact: "This was the only US President to serve more than two consecutive terms", possibleAnswers: ["George Washington", "Franklin D. Roosevelt", "Woodrow Wilson", "Andrew Jackson"], correctAnswer: 2, isAvailable: true),
        Facts(fact: "In what year was the United Nations founded?", possibleAnswers: ["1918", "1919", "1945", "1954"], correctAnswer: 3, isAvailable: true),
        Facts(fact: "The Titanic departed from the United Kingdom. Where was it supposed to arrive?", possibleAnswers: ["Paris", "Washington D.C.", "New York City", "Boston"], correctAnswer: 3, isAvailable: true),
        Facts(fact: "Which nation produces the most oil?", possibleAnswers: ["Iran", "Iraq", "Brazil", "Canada"], correctAnswer: 4, isAvailable: true)
    ]
    
func sortQuestions() {
    availableQuestions = []
    for question in trivia {
        if question.isAvailable == true {
            availableQuestions.append(question)
        }
    }
}
