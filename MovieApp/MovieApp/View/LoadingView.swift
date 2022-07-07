//
//  LoadingView.swift
//  MovieApp
//
//  Created by Ezequiel Rasgido on 07/07/2022.
//

import SwiftUI

struct LoadingView: View {
    var body: some View {
       Text("Loading...")
        .font(.largeTitle)
        .fontWeight(.heavy)
    }
}

struct LoadingView_Previews: PreviewProvider {
    static var previews: some View {
        LoadingView()
    }
}
