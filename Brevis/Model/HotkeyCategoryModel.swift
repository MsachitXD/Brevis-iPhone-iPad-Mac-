//
//  HotkeyCategoryModel.swift
//  Brevis
//
//  Created by Sachit Mittal on 06/10/25.
//

import Foundation

struct HotkeyCategoryModel: Identifiable {
    let id = UUID()
    
    let name : String
    let hotkeyModels : [HotkeyModel]
}
