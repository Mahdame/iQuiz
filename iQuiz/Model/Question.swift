//
//  Question.swift
//  iQuiz
//
//  Created by Maira Barbosa on 10/02/2024.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var correctAnswer: Int
}

let questions: [Question] = [
    Question(title: "Where does Michael Scott move to start his new life with Holly?", answers: ["Seattle, Washington", "Austin, Texas", "Boulder, Colorado"], correctAnswer: 2),
    Question(title: "What are the names of Jim and Pam Halpert's kids?", answers: ["Cecelia and Phillip", "Emily and Luke", "Lily and Jack"], correctAnswer: 0),
    Question(title: "Which of Angela's cats did Dwight kill?", answers: ["Whiskers", "Sprinkles", "Mittens"], correctAnswer: 1),
    Question(title: "Who was Pam engaged to before Jim?", answers: ["Roy", "Mark", "Todd"], correctAnswer: 0),
    Question(title: "At Phyllis' wedding, Michael revealed that her nickname in high school was what?", answers: ["Easy Rider", "Wild Thing", "Party Animal"], correctAnswer: 0),
    Question(title: "Which Grammy nominee played Andy's brother Walter?", answers: ["Ed Sheeran", "Josh Groban", "Bruno Mars"], correctAnswer: 1),
    Question(title: "Who was hired as Michael Scott's replacement before he moved?", answers: ["Karen Filippelli", "Todd Packer", "Deangelo Vickers (Will Ferrell)"], correctAnswer: 2),
    Question(title: "What was the name of Jan Levinson's assistant at corporate?", answers: ["Taylor", "Carter", "Hunter"], correctAnswer: 2),
    Question(title: "How many minutes did Michael Scott work at the office?", answers: ["9,986,000 minutes", "12,345,678 minutes", "5,000,000 minutes"], correctAnswer: 0),
    Question(title: "Who won 'Hottest in the Office' at Michael's last Dundies?", answers: ["Ryan Howard", "Danny Cordray", "Jim Halpert"], correctAnswer: 1)
]
