//
//  View+Extensions.swift
//  MovieApp
//
//  Created by Ezequiel Rasgido on 06/07/2022.
//

import Foundation
import SwiftUI

extension View {
    
    func embedNavigationView() -> some View {
        return NavigationView { self }
    }
}
