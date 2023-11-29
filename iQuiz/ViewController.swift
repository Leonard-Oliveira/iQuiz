//
//  ViewController.swift
//  iQuiz
//
//  Created by Leonard Nucci de Oliveira on 29/11/23.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var BotaoIniciarQuiz: UIButton!
    
    
    @IBAction func botaoIniciarQuizPressionado(_ sender: Any) {
        print("Botão pressionado.")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
    }

    func configuraLayout() {
        BotaoIniciarQuiz.layer.cornerRadius = 12.0
    }
}

