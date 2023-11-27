//
//  PostView.swift
//  Kate's Pinterest 2
//
//  Created by Kate Song on 11/25/23.
//

import SwiftUI

struct PostView: View {
    @State private var isMenuVisible = false
    var post: Post
    let maxTitleLength = 50
    let ellipsisSize: CGFloat = 30
    let ellipsisVerticalOffset: CGFloat = -5

    var body: some View {
        VStack(alignment: .leading, spacing: 2) {
            Image(post.imageURL)
                .resizable()
                .scaledToFill()
                .frame(maxWidth: .infinity)
                .aspectRatio(contentMode: .fit)
                .clipped()
                .cornerRadius(10)
                .alignmentGuide(.top) { dimension in
                    dimension[.top] + ellipsisVerticalOffset
                }
                .onTapGesture {
                    isMenuVisible.toggle()
                }

            HStack {
                Text(truncateTitle(post.title))
                    .font(.subheadline)
                    .bold()
                    .multilineTextAlignment(.leading)
                    .lineLimit(1) // Limit the title to one line
                    .frame(maxWidth: .infinity, alignment: .leading)
            }

  
            HStack {
                Spacer()
                Image(systemName: "ellipsis")
                    .foregroundColor(.black)
                    .onTapGesture {
                        isMenuVisible.toggle()
                    }
            }
            .padding(.trailing, 8)

            Text(post.source)
                .font(.subheadline)
                .foregroundColor(.black)
                .multilineTextAlignment(.leading)
                .lineLimit(1)
                .offset(y: -5)
        }
        .background(Color.clear)
        .padding(8)
        .popover(isPresented: $isMenuVisible, arrowEdge: .bottom) {
            VStack(alignment: .leading, spacing: 10) {
                Text("This Pin was inspired by your recent activity")
                    .font(.subheadline)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)

                Button(action: {
                }) {
                    Text("Hide")
                        .foregroundColor(Color.black.opacity(0.7))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(8)
                        .background(Color.clear)
                }

                Button(action: {
                }) {
                    Text("Report")
                        .foregroundColor(Color.black.opacity(0.7))
                        .bold()
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .padding(8)
                        .background(Color.clear)
                }

                Spacer()

                Button(action: {
                    isMenuVisible.toggle()
                }) {
                    Text("Close")
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, alignment: .center)
                        .padding(8)
                        .background(RoundedRectangle(cornerRadius: 8).fill(Color.gray.opacity(0.3)))
                }
            }
            .padding()
            .frame(maxWidth: .infinity, maxHeight: UIScreen.main.bounds.height / 2)
        }
    }

    private func truncateTitle(_ title: String) -> String {
        return title.count > maxTitleLength ? "\(title.prefix(maxTitleLength))..." : title
    }
}

