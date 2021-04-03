//
//  AnimalDetailView.swift
//  AfricaApp
//
//  Created by Damian Pedrycz on 03/04/2021.
//

import SwiftUI

struct AnimalDetailView: View {
    
    let animal: Animal
    
    var body: some View {
        ScrollView(.vertical, showsIndicators: false){
            VStack(alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, spacing: 20) {
               // HERO IMAGE
                Image(animal.image)
                    .resizable()
                    .scaledToFit()
                
                // TITLE
                Text(animal.name.uppercased())
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .multilineTextAlignment(.center)
                    .padding(.vertical, 8)
                    .foregroundColor(.primary)
                    .background(
                        Color.accentColor
                            .frame(height: 6)
                            .offset(y: 24)
                    )
                
                // HEADLINE
                Text(animal.headline)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .foregroundColor(.accentColor)
                    .padding(.horizontal)
                
                // GALLERY
                Group {
                    HeadingView(headingImage: "photo.on.rectangle.angled", headingText: "Wilderness in Pictures")
                    
                    InsetGalleryview(animal: animal)
                }
                .padding(.horizontal)
                
                // FACTS
                
                // DESCRIPTIONS
                
                // MAP
                
                // LINK
                
                
            }//: VSTACK
            .navigationBarTitle("Learn about \(animal.name)", displayMode: .inline)
        }//: SCROLL
        
        
    }
}

struct AnimalDetailView_Previews: PreviewProvider {
    
    static let animals: [Animal] = Bundle.main.decode(file: "animals.json")
    static var previews: some View {
        AnimalDetailView(animal: animals[0])
    }
}
