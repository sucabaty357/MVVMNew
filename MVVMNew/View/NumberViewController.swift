//
//  ViewController.swift
//  MVVMNew
//
//  Created by Thinh Nguyen on 10/2/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

import UIKit

class NumberViewController: UIViewController {

    @IBOutlet weak var numberLabel: UILabel!
    @IBOutlet weak var decreaseButton: UIButton!
    
    private let numberViewModel = NumberViewModel(number: 3)
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        numberViewModel.numberString?.bindAndFire(hdl: { [weak self] (text) in
            guard let `self` = self else { return }
            self.numberLabel.text = text
        })
        
        numberViewModel.decreaseEnabled?.bindAndFire(hdl: { [weak self] (enabled) in
            guard let `self` = self else { return }
            self.decreaseButton.isEnabled = enabled
        })
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    @IBAction func decreaseAction(_ sender: UIButton) {
        self.numberViewModel.decreaseNumber()
    }
    
    @IBAction func increaseAction(_ sender: UIButton) {
        self.numberViewModel.increaseNumber()
    }

}

