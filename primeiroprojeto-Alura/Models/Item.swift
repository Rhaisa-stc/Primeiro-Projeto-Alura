//
//  Item.swift
//  primeiroprojeto-Alura
//
//  Created by Rhaisa Rodrigues on 5/16/22.
//

import UIKit

class Item: NSObject {
    
//atributos
    let nome: String
    let calorias: Double

//inicializador-init
    init(nome: String, calorias: Double) {
        self.nome = nome
        self.calorias = calorias
    }
}
