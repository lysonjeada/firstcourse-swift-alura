//
//  ViewController.swift
//  eggplant-brownie
//
//  Created by Amaryllis Baldrez on 01/05/21.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var nomeTextField: UITextField?
    @IBOutlet var felicidadeTextField: UITextField?
    
    
    @IBAction func adicionar(_ sender: Any) {
        
        
        guard let nomeDaRefeicao = nomeTextField?.text else {
            return
        }
        
        guard let felicidadeDaRefeicao = felicidadeTextField?.text, let felicidade = Int(felicidadeDaRefeicao) else {
            return
        }
        
        let refeicao = Refeicao(nome: nomeDaRefeicao, felicidade: felicidade)
        
        print("comi \(refeicao.nome) churros e fiquei com felicidade: \(refeicao.felicidade)")
        
        
    }
}

