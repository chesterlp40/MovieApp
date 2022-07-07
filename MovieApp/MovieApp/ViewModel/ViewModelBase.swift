//
//  ViewModelBase.swift
//  MovieApp
//
//  Created by Ezequiel Rasgido on 07/07/2022.
//

import Foundation
import SwiftUI 

enum LoadingState {
    case loading, success, failed, none
}

class ViewModelBase: ObservableObject {
    @Published var loadingState: LoadingState = .none
}
