//
//  Questoes.swift
//  iQuiz
//
//  Created by Leonard Nucci de Oliveira on 30/11/23.
//

import Foundation

struct Question {
    var title: String
    var answers: [String]
    var rightAnswerIndex: Int
}

let questions: [Question] = [
    Question(title: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", answers: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], rightAnswerIndex: 2),
    Question(title: "Em que ano Vingadores Ultimato foi lançado?" , answers: ["2019", "2018", "2017"], rightAnswerIndex: 0),
    Question(title: "Qual o nome verdadeiro do Darth Vader?", answers: ["Obi-wan", "Anakin Skywalker", "Han Solo"], rightAnswerIndex: 1),
    Question(title: "Que personagem em 'O Senhor dos Anéis' que é um elfo?", answers: ["Gimli", "Aragorn", "Legolas"], rightAnswerIndex: 2),
    Question(title: "Qual personagem não é um herói?", answers: ["Homem de Ferro", "Deadpool", "Doutor Estranho"], rightAnswerIndex: 1),
    Question(title: "Qual a palavra dita para utilizar o poder mais forte no anime Bleach?", answers: ["kamehameha", "Hasengan", "Bankai"], rightAnswerIndex: 2),
    Question(title: "Qual personagem não é um autobot?", answers: ["Starscream", "Bumblebee", "Optimus-Prime"], rightAnswerIndex: 0)
]
