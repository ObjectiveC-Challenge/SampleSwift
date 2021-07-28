//
//  ViewController.swift
//  FrameworkFuncionando
//
//  Created by Helaine Pontes on 27/07/21.
//

import UIKit
import HJVisualComponents

class ViewController: UIViewController {
    let response = UILabel()

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        //initialize RadioButton with custom init
        let radioButtons = RadioButton(multiplier: 0.5, selectedColor: .black, unselectedColor: .gray, fontColor: .black)
        //setup radiobutton options with a array.
        radioButtons?.setOptions(["A", "B", "C"])
        
        //add the radioButtonsView to view
        self.view.addSubview(radioButtons!)
        
        //setup the radiobutton constraints
        radioButtons?.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            radioButtons!.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            radioButtons!.centerYAnchor.constraint(equalTo: self.view.centerYAnchor),
            radioButtons!.widthAnchor.constraint(equalToConstant: 300),
            radioButtons!.heightAnchor.constraint(equalToConstant: 100)
        ])
        
       // example of using the getSelectedLabel function
        self.view.addSubview(response)
        response.translatesAutoresizingMaskIntoConstraints = false
        NSLayoutConstraint.activate([
            response.centerXAnchor.constraint(equalTo: self.view.centerXAnchor),
            response.centerYAnchor.constraint(equalTo: self.view.centerYAnchor, constant: 100)
        ])
        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
            self.response.text = radioButtons?.getSelectedLabel()
        }
    }


}

