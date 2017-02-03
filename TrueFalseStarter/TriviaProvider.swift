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
    let possibleAnswers: [String]
    let correctAnswer: Int
}


// Primary collection of Facts
var triviaSource: [Facts] = [
    Facts(fact: "Which of the following countries has the most residents?", possibleAnswers: ["Nigeria", "Russia", "Iran", "Vietnam"], correctAnswer: 1),
    Facts(fact: "This was the only US President to serve more than two consecutive terms", possibleAnswers: ["George Washington", "Franklin D. Roosevelt", "Woodrow Wilson", "Andrew Jackson"], correctAnswer: 2),
    Facts(fact: "In what year was the United Nations founded?", possibleAnswers: ["1918", "1919", "1945", "1954"], correctAnswer: 3),
    Facts(fact: "The Titanic departed from the United Kingdom. Where was it supposed to arrive?", possibleAnswers: ["Paris", "Washington D.C.", "New York City", "Boston"], correctAnswer: 3),
    Facts(fact: "Which nation produces the most oil?", possibleAnswers: ["Iran", "Iraq", "Brazil", "Canada"], correctAnswer: 4),
    Facts(fact: "Which country has most recently won consecutive World Cups in Soccer?", possibleAnswers: ["Italy", "Brazil", "Argentina", "Spain"], correctAnswer: 2),
    Facts(fact: "Which of the following rivers is longest?", possibleAnswers: ["Yangtze", "Mississippi", "Congo", "Mekong"], correctAnswer: 2),
    Facts(fact: "Which city is the oldest?", possibleAnswers: ["Mexico City", "Cape Town", "San Juan", "Sydney"], correctAnswer: 1),
    Facts(fact: "Which country was the first to allow women to vote in national elections?", possibleAnswers: ["Poland", "United States", "Sweden", "Senegal"], correctAnswer: 1),
    Facts(fact: "Which of these countries won the most medals in the 2012 Summer Games?", possibleAnswers: ["France", "Germany", "Japan", "Great Britian"], correctAnswer: 4)
]


// Temporarily holds Facts only for the duration of one round.
var trivia: [Facts] = []

// Resets the 'trivia' array with a full set of Facts
func resetQuestions() {
    trivia = []
    for question in triviaSource {
        trivia.append(question)
    }
}
