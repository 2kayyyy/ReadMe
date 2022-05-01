//
//  TextViews.swift
//  ReadMe
//
//  Created by Aryan Kafle on 01/05/2022.
//

import SwiftUI

struct TitleView: View {
    var title: String
    var body: some View {
        Text(title)
            .font(.title2)
    }
}

struct AuthorView: View {
    var author: String
    var body: some View {
        Text(author)
        .foregroundColor(.secondary)
    }
}

struct BookInfo: View {
    var title: String
    var author: String
    var body: some View {
        VStack(alignment: .leading) {
            TitleView(title: title)
            AuthorView(author: author)
        }
    }
}

struct TextViews: View {
    var body: some View {
        BookInfo(title: "Title", author: "Author")
    }
}

struct TextViews_Previews: PreviewProvider {
    static var previews: some View {
        TextViews()
        TextViews() .preferredColorScheme(.dark)
    }
}
