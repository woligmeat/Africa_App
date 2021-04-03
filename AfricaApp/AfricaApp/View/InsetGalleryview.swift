//
//  InsetGalleryview.swift
//  AfricaApp
//
//  Created by Damian Pedrycz on 03/04/2021.
//

import SwiftUI

struct InsetGalleryview: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false){
            HStack(alignment: .center, spacing: 15) {
                ForEach(animal.gallery, id: \.self) { item in
                    Image(item)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 200)
                        .cornerRadius(12)
                }//: LOOP
            }//: HSTACK
        }//: SCROLL
        
        
    }
}

struct InsetGalleryview_Previews: PreviewProvider {
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    
    static var previews: some View {
        InsetGalleryview(animal: animals[0])
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
