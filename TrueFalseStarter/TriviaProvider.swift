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
    let truth: Bool
}

// Facts and true/false answers
let trivia: [Facts] = [
Facts(fact: "Only female koalas can whistle", truth: false),
Facts(fact: "Camels are cannibalistic", truth: false),
Facts(fact: "Blue whales are technically whales", truth: true),
Facts(fact: "All ducks are birds", truth: true)
]
