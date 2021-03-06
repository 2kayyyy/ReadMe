//
//  ContentView.swift
//  ReadMe
//
//  Created by Aryan Kafle on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    NavigationView {
      List(Library().sortedBooks, id: \.title) { book in
        BookRow(book: book)
      }
      .navigationTitle("My Library")
    }
  }
}


struct BookRow: View {
    let book: Book
    
    var body: some View {
        NavigationLink(
            destination: DetailView(book: book)) {
                HStack {
                    Book.Image(title: book.title, size: 80)
                    BookInfo(book: book, titleFont: .title2, authorFont: .title3)
                        .lineLimit(1)
                }
                .padding(.vertical, 8)
            }
    }
}


struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}

