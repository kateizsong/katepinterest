//
//  PostView.swift
//  Kate's Pinterest 2
//
//  Created by Kate Song on 11/25/23.
//

import SwiftUI

struct PostView: View {
    var post: Post

    var body: some View {
        VStack(alignment: .leading, spacing: 4) {
            Image(post.imageURL)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(10)

            
            Text(post.title)
                .font(.subheadline)
                .bold()
                .multilineTextAlignment(.leading)
                .lineLimit(1)

        
            Text(post.source)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
                .offset(y: -4)
        }
        .background(Color.clear)
        .padding(8)
    }
}





