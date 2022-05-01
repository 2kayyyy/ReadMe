//
//  ImageView.swift
//  ReadMe
//
//  Created by Aryan Kafle on 01/05/2022.
//

import SwiftUI

struct BookInfo: View {
    let book: Book
    let titleFont: Font
    let authorFont: Font
    
    
    var body: some View {
        VStack(alignment: .leading) {
            Text(book.title)
                .font(titleFont)
            Text(book.author)
                .font(authorFont)
                .foregroundColor(.secondary)
        }
    }
}

//Creating BookImage to generate Image acc to First Letter Of Title
extension Book {
    struct Image: View {
        let title: String
        var size: CGFloat?
        
        var body: some View {
            let symbol =
            SwiftUI.Image(title: title)
            ?? .init(systemName: "book")
            
            symbol
                .resizable()
                .scaledToFit()
                .frame(width: size, height: size)
                .font(Font.title.weight(.light))
                .foregroundColor(.secondary.opacity(0.5))
        }
    }
}



extension Image {
  init?(title: String) {
    guard
      let character = title.first,
      case let symbolName = "\(character.lowercased()).square",
      UIImage(systemName: symbolName) != nil
    else {
      return nil
    }
    
    self.init(systemName: symbolName)
  }
}





struct BookViews: View {
    var body: some View {
        VStack{
            BookInfo(book: .init(), titleFont: .title, authorFont: .title2)
            Book.Image(title: Book().title)
        }
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        BookViews()
        BookViews() .preferredColorScheme(.dark)
    }
}
