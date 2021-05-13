//
//  Item.swift
//  eggplant-brownie
//
//  Created by Amaryllis Baldrez on 05/05/21.
//

import UIKit

class Item: NSObject {
    let nome: String
    let calorias: Double
    
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }

}
