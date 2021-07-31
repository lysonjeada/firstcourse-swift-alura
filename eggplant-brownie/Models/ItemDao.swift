//
//  ItemDao.swift
//  eggplant-brownie
//
//  Created by Amaryllis Baldrez on 14/07/21.
//

import Foundation

class ItemDao {
    
    func save(_ itens: [Item]) {
        do {
            // convertendo o objeto itens para um binario (data, que é essencialmente binario) chamado de serializacao, ou marshaling
            // e para desconverter é chamado de desserializacao ou unmarshaling
            let dados = try NSKeyedArchiver.archivedData(withRootObject: itens, requiringSecureCoding: false)
            guard let caminho = recuperaDiretorio() else { return }
            try dados.write(to: caminho)
        } catch {
            print(error.localizedDescription)
        }
    }
    
    func recupera() -> [Item] {
        do {
            guard let diretorio = recuperaDiretorio() else { return [] }
            let dados = try Data(contentsOf: diretorio)
            let itensSalvos = try NSKeyedUnarchiver.unarchiveTopLevelObjectWithData(dados) as! [Item]
            return itensSalvos
        } catch {
            print(error.localizedDescription)
            return []
        }
    }
    
    func recuperaDiretorio() -> URL? {
        guard let diretorio = FileManager.default.urls(for: .documentDirectory, in: .userDomainMask).first else {
            return nil
        }
        let caminho = diretorio.appendingPathComponent("itens")
        
        return caminho
    }
}
