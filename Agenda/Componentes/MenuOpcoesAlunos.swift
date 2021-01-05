//
//  MenuOpcoesAlunos.swift
//  Agenda
//
//  Created by Fabricio Rodrigo Baixo on 1/5/21.
//  Copyright © 2021 Alura. All rights reserved.
//

import UIKit

enum MenuActionSheetAlunos{
    case sms
    case ligacao
}

class MenuOpcoesAlunos: NSObject {
    
    func configuraMenuDeOpcoesDoAluno(completion:@escaping(_ opcao:MenuActionSheetAlunos) -> Void) -> UIAlertController{
        let menu = UIAlertController(title: "Atenção", message: "escolha uma das opções", preferredStyle: .actionSheet)
       
        let sms = UIAlertAction(title: "enviar SMS", style: .default) { (acao) in
            completion(.sms)
        }
        menu.addAction(sms)
        
        let ligacao = UIAlertAction(title: "ligacao", style: .default){ (acao) in
            completion(.ligacao)
        }
        menu.addAction(ligacao)
        
        
        let cancelar = UIAlertAction(title: "cancelar", style: .cancel, handler: nil)
        menu.addAction(cancelar)
    return menu
    }
}
