//
//  AdicionarItensViewController.swift
//  primeiroprojeto-Alura
//
//  Created by Rhaisa Rodrigues on 5/24/22.
//

import UIKit

protocol AdicionaItensDelegate {
    func add(_ item: Item)
}

class AdicionarItensViewController: UIViewController {

    //MARK: IBOutlets
    @IBOutlet weak var nomeTextField: UITextField!
    
    @IBOutlet weak var caloriasTextField: UITextField!
    
    //MARK: Atributos
    var delegate: AdicionaItensDelegate?
    
    init(delegate: AdicionaItensDelegate) {
        super.init(nibName: "AdicionarItensViewController", bundle: nil)
        self.delegate = delegate
    }
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    //MARK: View life cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    //MARK: IBAction
    @IBAction func adicionarItem(_ sender: Any) {
        //navegar para a proxima tela: navigationcontroller.push()
        //voltar para a tela anterior: navigationController.pop()
        guard let nome = nomeTextField.text, let calorias = caloriasTextField.text else {
            return
        }
        if let numeroDeCalorias = Double(calorias) {
            let item = Item(nome: nome, calorias: numeroDeCalorias)
            delegate?.add(item)
                    navigationController?.popViewController(animated: true)
        }
    
    }
}
