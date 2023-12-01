//
//  Questoes.swift
//  iQuiz
//
//  Created by Leonard Nucci de Oliveira on 30/11/23.
//

import Foundation

struct Questao {
    var titulo: String
    var respostas: [String]
    var respostaCorreta: Int
}

let questoes: [Questao] = [
    Questao(titulo: "Qual feitiço para desarmar o seu oponente, em Harry Potter?", respostas: ["Expecto Patronum", "Avada Kedavra", "Expelliarmus"], respostaCorreta: 2),
    Questao(titulo: "Em que ano Vingadores Ultimato foi lançado?" , respostas: ["2019", "2018", "2017"], respostaCorreta: 0),
    Questao(titulo: "Qual o nome verdadeiro do Darth Vader?", respostas: ["Obi-wan", "Anakin Skywalker", "Han Solo"], respostaCorreta: 1)
]
