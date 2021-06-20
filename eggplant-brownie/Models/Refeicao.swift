//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Amaryllis Baldrez on 05/05/21.
//

import UIKit

class Refeicao: NSObject {
    
    var nome: String
    var felicidade: Int
    var itens: Array<Item> = []
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    func totalDeCalorias () -> Double {
        var total = 0.0
        
        for item in itens {
            total += item.calorias
        }
        
        return total
    }

}
