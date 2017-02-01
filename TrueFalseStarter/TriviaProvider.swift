//
//  Trivia.swift
//  TrueFalseStarter
//
//  Created by Steven Beckham on 1/30/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

import Foundation

// Create a struct to model the data
struct Facts {
    let fact: String
    let answer1: (String, Bool)
    let answer2: (String, Bool)
    let answer3: (String, Bool)
    let answer4: (String, Bool)
}

// Facts and true/false answers
let trivia: [Facts] = [
    Facts(fact: "Only female koalas can whistle", answer1: ("George Washington", false), answer2: ("Franklin D. Roosevelt", true), answer3: ("Woodrow Wilson", false), answer4: ("Andrew Jackson", false)),
    Facts(fact: "Which of the following countries has the most residents?", answer1: ("Nigeria", true), answer2: ("Russia", false), answer3: ("Iran", false), answer4: ("Vietnam", false))

]
