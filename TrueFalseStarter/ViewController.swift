//
//  ViewController.swift
//  TrueFalseStarter
//
//  Created by Pasan Premaratne on 3/9/16.
//  Copyright © 2016 Treehouse. All rights reserved.
//

import UIKit
import GameKit
import AudioToolbox

class ViewController: UIViewController {
    
    let questionsPerRound = 4
    var questionsAsked = 0
    var correctQuestions = 0
    var indexOfSelectedQuestion: Int = 0
    
    var gameSound: SystemSoundID = 0
    
    
    @IBOutlet var myView: UIView!
    @IBOutlet weak var questionField: UILabel!
    @IBOutlet weak var firstResponse: UIButton!
    @IBOutlet weak var secondResponse: UIButton!
    @IBOutlet weak var thirdResponse: UIButton!
    @IBOutlet weak var fourthResponse: UIButton!
    @IBOutlet weak var playAgainButton: UIButton!
    
    

    override func viewDidLoad() {
        firstResponse.layer.cornerRadius = 10
        secondResponse.layer.cornerRadius = 10
        thirdResponse.layer.cornerRadius = 10
        fourthResponse.layer.cornerRadius = 10
        playAgainButton.layer.cornerRadius = 10
        super.viewDidLoad()
        loadGameStartSound()

        // Start game
        playGameStartSound()
        resetQuestions()
        displayQuestion()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func displayQuestion() {
        indexOfSelectedQuestion = GKRandomSource.sharedRandom().nextInt(upperBound: trivia.count)
        let questionDictionary = trivia[indexOfSelectedQuestion]
        questionField.text = questionDictionary.fact
        firstResponse.setTitle(questionDictionary.possibleAnswers[0], for: .normal)
        secondResponse.setTitle(questionDictionary.possibleAnswers[1], for: .normal)
        thirdResponse.setTitle(questionDictionary.possibleAnswers[2], for: .normal)
        fourthResponse.setTitle(questionDictionary.possibleAnswers[3], for: .normal)
        playAgainButton.isHidden = true
    }
    
    func displayScore() {
        // Hide the answer buttons
        firstResponse.isHidden = true
        secondResponse.isHidden = true
        thirdResponse.isHidden = true
        fourthResponse.isHidden  = true
        
        // Display play again button
        playAgainButton.isHidden = false
        
        questionField.text = "Way to go!\nYou got \(correctQuestions) out of \(questionsPerRound) correct!"
        
    }
    
    @IBAction func checkAnswer(_ sender: UIButton) {
        // Increment the questions asked counter
        questionsAsked += 1
        
        let selectedQuestionDict = trivia[indexOfSelectedQuestion]
        let correctAnswer = selectedQuestionDict.correctAnswer
        
        if (sender === firstResponse &&  correctAnswer == 1)  || (sender === secondResponse && correctAnswer == 2) || (sender === thirdResponse && correctAnswer == 3) || (sender === fourthResponse && correctAnswer == 4) {
            correctQuestions += 1
            questionField.text = "Correct!"
        } else {
            questionField.text = "Sorry, wrong answer! The correct answer is \(trivia[indexOfSelectedQuestion].possibleAnswers[correctAnswer - 1])."
        }
        trivia.remove(at: indexOfSelectedQuestion)
        loadNextRoundWithDelay(seconds: 2)
    }
    
    func nextRound() {
        if questionsAsked == questionsPerRound {
            // Game is over
            displayScore()
        } else {
            // Continue game
            displayQuestion()
        }
    }
    
    @IBAction func playAgain() {
        // Show the answer buttons
        firstResponse.isHidden = false
        secondResponse.isHidden = false
        thirdResponse.isHidden = false
        fourthResponse.isHidden  = false
        
        questionsAsked = 0
        correctQuestions = 0
        resetQuestions()
        nextRound()
    }
    

    
    // MARK: Helper Methods
    
    func loadNextRoundWithDelay(seconds: Int) {
        // Converts a delay in seconds to nanoseconds as signed 64 bit integer
        let delay = Int64(NSEC_PER_SEC * UInt64(seconds))
        // Calculates a time value to execute the method given current time and delay
        let dispatchTime = DispatchTime.now() + Double(delay) / Double(NSEC_PER_SEC)
        
        // Executes the nextRound method at the dispatch time on the main queue
        DispatchQueue.main.asyncAfter(deadline: dispatchTime) {
            self.nextRound()
        }
    }
    
    func loadGameStartSound() {
        let pathToSoundFile = Bundle.main.path(forResource: "GameSound", ofType: "wav")
        let soundURL = URL(fileURLWithPath: pathToSoundFile!)
        AudioServicesCreateSystemSoundID(soundURL as CFURL, &gameSound)
    }
    
    func playGameStartSound() {
        AudioServicesPlaySystemSound(gameSound)
    }
}

