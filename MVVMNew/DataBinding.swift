//
//  DataBinding.swift
//  MVVMNew
//
//  Created by Thinh Nguyen on 10/2/19.
//  Copyright © 2019 Trong Duong. All rights reserved.
//

class DataBinding<T> {
    typealias Handler = (T) -> Void
    private var handlers:[Handler] = []
    
    var value: T {
        didSet {
            self.fire()
        }
    }
    
    init(value: T) {
        self.value = value
    }
    
    func bind(hdl:@escaping Handler) {
        self.handlers.append(hdl)
    }
    
    func bindAndFire(hdl:@escaping Handler) {
        self.bind(hdl: hdl)
        self.fire()
    }
    
    private func fire() {
        for hdl in self.handlers {
            hdl(value)
        }
    }
}
