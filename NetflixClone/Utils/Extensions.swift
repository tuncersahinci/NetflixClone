//
//  Extensions.swift
//  NetflixClone
//
//  Created by Tuncer Şahinci on 25.04.2022.
//

import Foundation


extension String {
    func capitalizingFirstLetter() -> String {
        return prefix(1).capitalized + dropFirst()
    }

    mutating func capitalizeFirstLetter() {
        self = self.capitalizingFirstLetter()
    }
}
