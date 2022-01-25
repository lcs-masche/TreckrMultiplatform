//
//  TipsList.swift
//  TreckrMultiplatform
//
//  Created by Moritz Conrad Asche on 2022-01-20.
//

import SwiftUI

struct TipsList: View {
    
    let tips: [Tip]
    
    var body: some View {
        
        List(tips, id: \.text)  { tip in
            
            //if there are children in this particular tip...
            if tip.children != nil {
                Label(tip.text, systemImage: "quote.bubble")
            } else {
                
                Text(tip.text)
                
            }
            
        }
        
    }
    
    init() {
        
        let url = Bundle.main.url(forResource: "tips", withExtension: "json")!
        
        let data = try! Data(contentsOf: url)
        
        tips = try! JSONDecoder().decode([Tip].self, from: data)
        
    }
    
}

struct TipsList_Previews: PreviewProvider {
    static var previews: some View {
        TipsList()
    }
}
