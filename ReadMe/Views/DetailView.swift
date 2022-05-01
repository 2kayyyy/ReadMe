//
//  DetailView.swift
//  ReadMe
//
//  Created by Aryan Kafle on 01/05/2022.
//

import SwiftUI

struct DetailView: View {
  let book: Book
  
  var body: some View {
    VStack(alignment: .leading) {
      BookInfo(book: book, titleFont: .title, authorFont: .title2)
      Book.Image(title: book.title)
      Spacer()
    }
    .padding()
  }
}

struct DetailView_Previews: PreviewProvider {
  static var previews: some View {
    DetailView(book: .init())
  }
}
