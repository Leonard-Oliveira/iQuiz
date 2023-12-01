//
//  ResultViewController.swift
//  iQuiz
//
//  Created by Leonard Nucci de Oliveira on 01/12/23.
//

import UIKit

class ResultViewController: UIViewController {

    var score: Int?
    
    @IBOutlet weak var quizFinishedLabel: UILabel!
    
    @IBOutlet weak var userScoreLabel: UILabel!
    
    @IBOutlet weak var userPercentageScoreLabel: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setLayout()
        setResults()
    }
    
    func setResults() {
        guard let score = score else { return }
        userScoreLabel.text = "Vocë acertou \(score) de \(questions.count) questões."
        
        let scorePercentage = (score * 100) / questions.count
        userPercentageScoreLabel.text = "Percentual final: \(scorePercentage)%."
    }
    
    func setLayout() {
        navigationItem.hidesBackButton = true
        restartButton.layer.cornerRadius = 12.0
    }
  

}
