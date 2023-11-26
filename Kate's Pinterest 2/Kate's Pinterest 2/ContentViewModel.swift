//
//  ContentViewModel.swift
//  Kate's Pinterest 2
//
//  Created by Kate Song on 11/25/23.
//

import SwiftUI

class ContentViewModel: ObservableObject {
    @Published var folders: [Folder] = DataModel.folders
}
