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
    
//    func detalhes() -> String {
//        var mensagem = "Felicidade: \(felicidade)"
//
//        for item in itens {
//            mensagem += ", \(item.nome) - calorias: \(item.calorias)"
//        }
//
//        return mensagem
//    }
    
    // uma mensagem a partir de uma lista de itens
    // se so olhou 2 primeiros itens, oq vc tem nesse momento eh a msg inicial = felicidade + calorias do item 0 e as calorias do item 1
    func detalhesReduce() -> String {
        itens.reduce("Felicidade: \(felicidade)"){ mensagemParcial, item in
            mensagemParcial + ", \(item.nome) - calorias: \(item.calorias)"
        }
    }
}
