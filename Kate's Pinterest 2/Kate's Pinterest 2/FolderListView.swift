//
//  FolderListView.swift
//  Kate's Pinterest 2
//
//  Created by Kate Song on 11/25/23.
//

import SwiftUI

struct FolderListView: View {
    @Binding var selectedFolder: Int
    var folders: [Folder]

    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 0) {
                Spacer()
                ForEach(0..<folders.count) { index in
                    Button(action: {
                        selectedFolder = index
                    }) {
                        Text(folders[index].name)
                            .foregroundColor(.primary)
                            .font(.headline)
                            .padding(20)
                            .underline(selectedFolder == index)
                    }
                    Spacer()
                }
            }
        }
        .padding(.top, 8)
        .frame(maxWidth: .infinity)
    }
}
