//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Maira Barbosa on 10/02/2024.
//

import UIKit

class QuestaoViewController: UIViewController {
    var points = 0
    var questionNumber = 0

    @IBOutlet var questionTitleLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!

    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSettings()
        setQuestion()
    }

    func layoutSettings() {
        navigationItem.hidesBackButton = true
        questionTitleLabel.numberOfLines = 0
        questionTitleLabel.textAlignment = .center

        for button in answerButtons {
            button.layer.cornerRadius = 16.0
        }
    }

    @objc func setQuestion() {
        questionTitleLabel.text = "\(questionNumber+1). \(questions[questionNumber].title)"
        for button in answerButtons {
            button.backgroundColor = UIColor.purpleBackground
            let buttonTitle = questions[questionNumber].answers[button.tag]
            button.setTitle(buttonTitle, for: .normal)
        }
    }

    @IBAction func answerOnButtonPressed(_ sender: UIButton) {
        let isRightAnswer = questions[questionNumber].correctAnswer == sender.tag
        if isRightAnswer {
            points += 1
            sender.backgroundColor = UIColor.greenBackground
        } else {
            sender.backgroundColor = UIColor.red
        }

        if questionNumber < questions.count - 1 {
            questionNumber += 1
            Timer.scheduledTimer(timeInterval: 0.7, target: self, selector: #selector(setQuestion), userInfo: nil, repeats: false)
        } else {
            navigateToScoreboard()
        }
    }

    func navigateToScoreboard() {
        performSegue(withIdentifier: "goToScoreboard", sender: nil)
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let scoreboardVC = segue.destination as? ScoreboardViewController else { return }
        scoreboardVC.points = points
    }

    /*
     // MARK: - Navigation

     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
         // Get the new view controller using segue.destination.
         // Pass the selected object to the new view controller.
     }
     */
}
