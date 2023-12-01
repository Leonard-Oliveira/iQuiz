//
//  QuestaoViewController.swift
//  iQuiz
//
//  Created by Leonard Nucci de Oliveira on 29/11/23.
//

import UIKit

class QuestaoViewController: UIViewController {
    
    var pontuacao = 0
    var numeroQuestao = 0
    
    @IBOutlet weak var tituloQuestaoLabel: UILabel!
    
    @IBOutlet var botoesRespostas: [UIButton]!
    
    @IBAction func respostaBotaoPressionado(_ sender: UIButton) {
        let usuarioAcertou = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertou {
            pontuacao += 1
            print("o usuario acertou!")
        }
        if numeroQuestao < questoes.count-1 {
            numeroQuestao += 1
        }
        configuraQuestao()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configuraLayout()
        configuraQuestao()
    }
    
    func configuraLayout() {
        navigationItem.hidesBackButton = true
        
        tituloQuestaoLabel.numberOfLines = 0
        tituloQuestaoLabel.textAlignment = .center
        
        for botao in botoesRespostas {
            botao.layer.cornerRadius = 12.0
        }
    }
    
    func configuraQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
        }
    }
}
