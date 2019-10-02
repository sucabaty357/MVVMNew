//
//  NumberModel.swift
//  MVVMNew
//
//  Created by Thinh Nguyen on 10/2/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

import Foundation

class NumberModel {
    private var value:Int = 0
    
    init(value:Int) {
        self.value = value
    }
    
    func getValue() -> Int {
        return self.value
    }
    
    func setValue(value:Int) {
        self.value = value
    }
}

