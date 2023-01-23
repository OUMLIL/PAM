//
//  Tirage.swift
//  IBBasics
//
//  Created by Oussama ABBOUD on 23/01/2023.
//

import Foundation

struct Tirage {
    func tirer() -> Int {
        return Int.random(in: 0...100)
    }
}
