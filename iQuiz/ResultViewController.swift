//
//  ResultViewController.swift
//  iQuiz
//
//  Created by Leonard Nucci de Oliveira on 01/12/23.
//

import UIKit

class ResultViewController: UIViewController {

    @IBOutlet weak var quizFinishedLabel: UILabel!
    
    @IBOutlet weak var userScoreLabel: UILabel!
    
    @IBOutlet weak var userPercentageScoreLabel: UILabel!
    
    @IBOutlet weak var restartButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }
    
    func configuraLayout() {
        restartButton.layer.cornerRadius = 12.0
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
