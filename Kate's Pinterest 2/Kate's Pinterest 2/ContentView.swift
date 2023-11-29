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
        }
    }

}






#Preview {
    ContentView()
}
