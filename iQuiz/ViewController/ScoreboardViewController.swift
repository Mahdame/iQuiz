//
//  ScoreboardViewController.swift
//  iQuiz
//
//  Created by Maira Barbosa on 12/02/2024.
//

import UIKit

class ScoreboardViewController: UIViewController {
    var points: Int?
    @IBOutlet var answerLabel: UILabel!
    @IBOutlet var percentLabel: UILabel!
    @IBOutlet var resetQuizButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSettings()
        scoreboardSettings()
    }

    func layoutSettings() {
        navigationItem.hidesBackButton = true
        resetQuizButton.layer.cornerRadius = 16.0
    }

    func scoreboardSettings() {
        guard let points = points else { return }
        answerLabel.text = "Você acertou \(points) de \(questions.count) questões."
        let percentual = (points * 100) / questions.count
        percentLabel.text = "Percentual final: \(percentual)%"
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
