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
        VStack {
            Text(post.title)
                .font(.headline)
            
            Image(post.imageURL)
                .resizable()
                .scaledToFit()
                .frame(width: 150, height: 100)
        }
        .padding()
        .background(Color.gray)
        .cornerRadius(10)
        .padding(.bottom, 10)
    }
}

