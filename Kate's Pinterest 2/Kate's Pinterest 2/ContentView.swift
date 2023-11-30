//
//  ContentView.swift
//  Kate's Pinterest 2
//
//  Created by Kate Song on 11/25/23.
//

import SwiftUI

struct ContentView: View {
    @ObservedObject var viewModel = ContentViewModel()
    @State private var selectedFolderIndex = 0

    var body: some View {
        VStack {
            Spacer()

            FolderListView(selectedFolderIndex: $selectedFolderIndex, folders: viewModel.folders)

            ScrollView {
                let columns = [
                    GridItem(.flexible(), spacing: 0),
                    GridItem(.flexible(), spacing: 0)
                ]

                LazyVGrid(columns: columns, spacing: -100) {
                    ForEach(viewModel.folders[selectedFolderIndex].posts, id: \.title) { post in
                        PostView(post: post)
                    }
                }
                .padding([.horizontal, .bottom], 1)
            }

            Spacer()

            // Menu Bar
            HStack {
                Spacer()
                Image(systemName: "house.fill")
                    .resizable()
                    .frame(width: 30, height: 25)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "magnifyingglass")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .bold()
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "plus")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "ellipsis.message")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .bold()
                    .foregroundColor(.gray)
                Spacer()
                Image(systemName: "person.crop.circle")
                    .resizable()
                    .frame(width: 30, height: 30)
                    .foregroundColor(.gray)
                Spacer()
            }
            .padding(.top, 4)
            .offset(y:5)
        }
    }
}

#Preview {
    ContentView()
}
