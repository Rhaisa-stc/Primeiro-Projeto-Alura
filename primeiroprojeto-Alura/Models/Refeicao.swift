//
//  Refeicao.swift
//  primeiroprojeto-Alura
//
//  Created by Rhaisa Rodrigues on 5/16/22.
//

import UIKit

class Refeicao: NSObject {
    //atributos
        let nome: String
        let felicidade: Int
        var itens: Array<Item> = []
        
    //construtor-inicializador
    init(nome: String, felicidade: Int, itens: [Item] = []) {
            self.nome = nome
            self.felicidade = felicidade
            self.itens = itens
        }
    //metodos-funcionalidades
        func totalDeCalorias() -> Double{
            var total = 0.0
            
            for item in itens {
                total += item.calorias
            }
            return total
        }
    }

