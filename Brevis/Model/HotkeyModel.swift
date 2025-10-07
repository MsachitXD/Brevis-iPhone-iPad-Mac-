//
//  HotkeyModel.swift
//  Brevis
//
//  Created by Sachit Mittal on 06/10/25.
//

import Foundation

struct HotkeyModel: Identifiable {
    let id = UUID()
    
    let modifiers: [Modifier]  // TODO: Create Modifer Data Type
    let character: String
    let text : String
    
    // TODO: Update Description
    var description: String {
        var result = ""
        for modifier in modifiers {
            result += modifier.rawValue
        }
        
        result += "\(character.capitalized)"
        
        return result
    }
}
