//
//  MapaViewController.swift
//  Agenda
//
//  Created by Fabricio Rodrigo Baixo on 1/5/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

class MapaViewController: UIViewController {

    var aluno:Aluno?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationItem.title = getTitulo()
    }

    func getTitulo() -> String {
        return "Localizar Alunos"
    }

}
