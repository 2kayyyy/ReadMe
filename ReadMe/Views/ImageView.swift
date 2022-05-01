//
//  ImageView.swift
//  ReadMe
//
//  Created by Aryan Kafle on 01/05/2022.
//

import SwiftUI

struct BookImage: View {
    var body: some View {
        Image(systemName: "book")
            .resizable()
            .scaledToFit()
            .frame(width: 80, height: 80)
            .font(Font.title.weight(.light))
            .foregroundColor(.secondary.opacity(0.5))
    }
}

struct ImageView: View {
    var body: some View {
        BookImage()
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        BookImage()
        BookImage() .preferredColorScheme(.dark)
    }
}
