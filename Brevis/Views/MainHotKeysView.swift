//
//  MainHotKeysView.swift
//  Brevis
//
//  Created by Sachit Mittal on 07/10/25.
//

import SwiftUI

struct MainHotKeysView: View {
    
    @State private var searchQuery = ""
    var vm : HotkeyCategoryViewModel = HotkeyCategoryViewModel()
    
    let listStyle = Theme.listStyle
    
    var body: some View {
        NavigationStack{
            Form{
                // Search for each category
                List(vm.hotkeyCategoryModels) { hotkeyCategory in
                    
                    // TODO: Implement section view
                    HotkeySectionView(
                        hotkeyCategoryName: hotkeyCategory.name,
                        hotkeyModels: hotkeyCategory.hotkeyModels,
                        searchQuery: searchQuery
                    )
                }
                
                .listStyle(listStyle)
                
            }
            .navigationTitle("Xcode Hotkeys")
            .searchable(text: $searchQuery, prompt: "Search....")
            
            KeySymbolView()
        }
        .frame(minWidth: Theme.frameWidth, minHeight: Theme.frameHeight)
    }
}

#Preview {
    MainHotKeysView()
}
