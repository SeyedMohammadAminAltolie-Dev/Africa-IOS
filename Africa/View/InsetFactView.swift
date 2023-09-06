//
//  InsetFactView.swift
//  Africa
//
//  Created by Ashkan Amin on 7/19/22.
//

import SwiftUI

struct InsetFactView: View {
    // MARK: - PROPERTIES
    
    let animal:Animal
    
    // MARK: - BODY
    var body: some View {
        GroupBox {
            TabView{
                ForEach(animal.fact, id:\.self) { item in
                    Text(item)
                    
                }
            }//: TABS
            .tabViewStyle(PageTabViewStyle())
            .frame(minHeight:148,idealHeight: 168,maxHeight: 180)
            
            
            
        }//: BOX
    }
}

struct InsetFactView_Previews: PreviewProvider {
    static var previews: some View {
        let animals:[Animal] = Bundle.main.decode("animals.json")
        InsetFactView(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
