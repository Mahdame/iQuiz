//
//  ViewController.swift
//  iQuiz
//
//  Created by Maira Barbosa on 09/02/2024.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startQuizButton: UIButton!
    
    @IBAction func onButtonPressed(_ sender: Any) {
        debugPrint("Quiz initialized!");
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        layoutSettings()
    }
    
    func layoutSettings() {
        navigationItem.hidesBackButton = true
        startQuizButton.layer.cornerRadius = 16.0
        startQuizButton.setTitleColor(.white, for: .application)
    }
}

