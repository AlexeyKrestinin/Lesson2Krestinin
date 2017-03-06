//
//  MacFonts.swift
//  Lesson2Krestinin
//
//  Created by Алексей Крестинин on 05.03.17.
//  Copyright © 2017 Alexey Krestinin. All rights reserved.
//

import Foundation
import UIKit

struct Fonts {
    
    var fontName:[String]
    let fontFamilyNames = UIFont.familyNames
    
    func printFonts() -> [String] {
        let fontFamilyNames = UIFont.familyNames
        var result = [String]()
        for familyName in fontFamilyNames {
            let names = UIFont.fontNames(forFamilyName: familyName)
            for name in names {
             result.append (name)
            }
            
        }
        return result
    }
}

