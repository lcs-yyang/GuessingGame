//
//  ViewController.swift
//  GuessingGame
//
//  Created by Yang, Yuxin on 2018-01-09.
//  Copyright © 2018 Yang, Jennifer. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //MARK: Outlets
    @IBOutlet weak var guessedNumber: UITextField!
    @IBOutlet weak var textFieldGuess: UITextField!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var buttonPlayAgain: UIButton!
    //MARK: Properties (variables)
    var game = GuessingGame()
    
    
    
    //MARK: Overrides
    override func viewDidLoad() {
        super.viewDidLoad()
        //Let's see what's the random number actually is
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    //MARK: Actions
    @IBAction func checkGuess(_ sender: Any) {
        
        print("A guess was made.")
        print(guessedNumber.text)
        
        //First we need to unwrap the optional text from
        // the text field
        // inputGiven is a String (non-opotional) - Guaranteed
        // to contain a value (it is not nill)
        guard let inputGiven = guessedNumber.text else {
           return
        }
        
        guard let guessedNumber = Int(inputGiven) else {
            //We couldn't make an integer
            // e.g.: Somebody typed "five" instead of 5
            return
        }
        
        
        //Print the actual number that was given
        print(guessedNumber)
        
        //Print out the number that needs to be guessed
        print("The number to be guessed is:")
        print(game.numberToGuess)
        
        // Compare the guess provided to the number to be guessed
        // if-else if-else
        labelMessage.text = game.compareNumbers(guessMade: guessedNumber)
        
        // Check for a win
        if labelMessage.text == "You got it!" {
            buttonPlayAgain.isHidden = false
        }
        
        
    }
    
}




