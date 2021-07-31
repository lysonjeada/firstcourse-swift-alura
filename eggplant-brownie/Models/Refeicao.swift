//
//  Refeicao.swift
//  eggplant-brownie
//
//  Created by Amaryllis Baldrez on 05/05/21.
//

import UIKit

class Refeicao: NSObject, NSCoding {
    
    // MARK: - Atributos
    
    var nome: String
    var felicidade: Int
    var itens: Array<Item> = []
    
    // MARK: - Init
    
    init(nome: String, felicidade: Int, itens: [Item] = []) {
        self.nome = nome
        self.felicidade = felicidade
        self.itens = itens
    }
    
    // MARK: - NSCoding
    
    func encode(with aCoder: NSCoder) {
        aCoder.encode(nome, forKey: "nome")
        aCoder.encode(felicidade, forKey: "felicidade")
        aCoder.encode(itens, forKey: "itens")
    }
    
    required init?(coder aDecoder: NSCoder) {
        nome = aDecoder.decodeObject(forKey: "nome") as! String
        felicidade = aDecoder.decodeInteger(forKey: "felicidade")
        itens = aDecoder.decodeObject(forKey: "itens") as! Array<Item>
    }
    
    // MARK: - Metodos
    
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
