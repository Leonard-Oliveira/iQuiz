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
        let usuarioAcertouResposta = questoes[numeroQuestao].respostaCorreta == sender.tag
        
        if usuarioAcertouResposta {
            pontuacao += 1
            sender.backgroundColor = UIColor(red: 11/255, green: 161/255, blue: 53/255, alpha: 1)
            print("o usuario acertou!")
        } else {
            sender.backgroundColor = UIColor(red: 211/255, green: 17/255, blue: 17/255, alpha: 1)
        }
        
        if numeroQuestao < questoes.count-1 {
            numeroQuestao += 1
            Timer.scheduledTimer(timeInterval: 2, target: self, selector: #selector(configuraQuestao), userInfo: nil, repeats: false)
        }
        
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
    
    @objc func configuraQuestao() {
        tituloQuestaoLabel.text = questoes[numeroQuestao].titulo
        for botao in botoesRespostas {
            let tituloBotao = questoes[numeroQuestao].respostas[botao.tag]
            botao.setTitle(tituloBotao, for: .normal)
            botao.backgroundColor = UIColor(red: 115/255, green: 50/255, blue: 255/255, alpha: 1)
        }
    }
}
