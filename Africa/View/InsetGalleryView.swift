//
//  InsetGalleryView.swift
//  Africa
//
//  Created by Ashkan Amin on 7/18/22.
//

import SwiftUI

struct InsetGalleryView: View {
    //MARK: - PROPERTIES
    
    let animal:Animal
    
    //MARK: - BODY
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack (alignment: .center, spacing: 15){
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height:200)
                    .cornerRadius(12)
                }
            }//: HSTACK
        }//: SCROLL
        
    }
}

struct InsetGalleryView_Previews: PreviewProvider {
    static var previews: some View {
        let animals:[Animal] = Bundle.main.decode("animals.json")
        InsetGalleryView(animal: animals[1])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
