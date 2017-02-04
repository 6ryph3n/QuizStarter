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
    Facts(fact: "How often are members of the House of Representatives elected?", possibleAnswers: ["Every two years", "Every four years", "Every six years", "Elected for life"], correctAnswer: 1),
    Facts(fact: "How often are members of the Senate elected?", possibleAnswers: ["Every two years", "Every four years", "Every six years", "Elected for life"], correctAnswer: 3),
    Facts(fact: "How often is a new president elected?", possibleAnswers: ["Every two years", "Every four years", "Every six years", "Elected for life"], correctAnswer: 2),
    Facts(fact: "There are nine Supreme Court Justices. How long does each Justice serve?", possibleAnswers: ["Two years", "Four years", "Six years", "Elected for life"], correctAnswer: 4),
    Facts(fact: "When was the United States Constitution written?", possibleAnswers: ["1776", "1787", "1805", "1820"], correctAnswer: 2),
    Facts(fact: "Who is the only president to have served more than two terms?", possibleAnswers: ["George Washington", "Thomas Jefferson", "John Adams", "Franklin D. Roosevelt"], correctAnswer: 4),
    Facts(fact: "When was the last time the Liberty Bell was rung?", possibleAnswers: ["1976", "1776", "1846", "1824"], correctAnswer: 3),
    Facts(fact: "When was Hawaii, the last of the 50 states, admitted to the Union?", possibleAnswers: ["1850", "1790", "1900", "1959"], correctAnswer: 4),
    Facts(fact: "In 1820 Salem, NJ held a trial against?", possibleAnswers: ["Witches", "Tomatoes", "Guns", "Whisky"], correctAnswer: 2),
    Facts(fact: "What year did Christopher Columbus discover the American continents?", possibleAnswers: ["1432", "1757", "1492", "1619"], correctAnswer: 3)
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
