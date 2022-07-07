//
//  MovieListScreen.swift
//  MovieApp
//
//  Created by Ezequiel Rasgido on 06/07/2022.
//

import SwiftUI

struct MovieListScreen: View {
    @ObservedObject private var movieListVM: MovieListViewModel
    @State private var movieName: String = ""
    
    init() {
        self.movieListVM = MovieListViewModel()
    }
    
    var body: some View {
        VStack {
            TextField(
                "Search",
                text: $movieName,
                onEditingChanged: { _ in },
                onCommit: {
                    // perform the search
                    self.movieListVM.searchByName(self.movieName)
                }
            )
                .textFieldStyle(RoundedBorderTextFieldStyle())
                .navigationBarTitle("Movies")
            
            Spacer()
            
            if self.movieListVM.loadingState == .success {
                  MovieListView(movies: self.movieListVM.movies)
            } else if self.movieListVM.loadingState == .failed {
                FailedView()
            } else if self.movieListVM.loadingState == .loading {
                LoadingView()
            }
        }
        .padding().embedNavigationView()
        
    }
}

struct MovieListScreen_Previews: PreviewProvider {
    static var previews: some View {
        MovieListScreen()
    }
}
