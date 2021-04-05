//
//  CenterModifier.swift
//  AfricaApp
//
//  Created by Damian Pedrycz on 05/04/2021.
//

import SwiftUI

struct CenterModifier: ViewModifier {
    func body(content: Content) -> some View {
        HStack {
            Spacer()
            content
            Spacer()
        }
    }
}
