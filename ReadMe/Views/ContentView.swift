//
//  ContentView.swift
//  ReadMe
//
//  Created by Aryan Kafle on 01/05/2022.
//

import SwiftUI

struct ContentView: View {
    var title = "Title"
    var author = "Author"
    
    var body: some View {
        HStack {
            BookImage()
            BookInfo(title: title, author: author)
        }
    }
}

struct Views: View {
    var body: some View {
        ContentView()
    }
}

struct Views_Previews: PreviewProvider {
    static var previews: some View {
        Views()
        Views() .preferredColorScheme(.dark)
    }
}
