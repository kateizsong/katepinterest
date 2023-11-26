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
            FolderListView(selectedFolderIndex: $selectedFolderIndex, folders: viewModel.folders)

            ScrollView {
                LazyVGrid(columns: Array(repeating: GridItem(), count: 2), spacing: 10) {
                    ForEach(viewModel.folders[selectedFolderIndex].posts, id: \.title) { post in
                        PostView(post: post)
                    }
                    .padding()
                }
            }
        }
    }
}


#Preview {
    ContentView()
}
