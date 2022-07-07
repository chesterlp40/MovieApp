//
//  FailedView.swift
//  MovieApp
//
//  Created by Ezequiel Rasgido on 06/07/2022.
//

import SwiftUI

struct FailedView: View {
    var body: some View {
        Image("oops")
            .resizable()
            .scaledToFit()
    }
}

struct FailedView_Previews: PreviewProvider {
    static var previews: some View {
        FailedView()
    }
}
