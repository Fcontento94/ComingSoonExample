//
//  MainView.swift
//  ComingSoon
//
//  Created by Federica Contento on 10/12/21.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        TabView {
            ContentView()
                .tabItem {
                    Label("Shows", systemImage: "film")
                }
            
            SearchView()
                .tabItem {
                    Label("Discover", systemImage: "magnifyingglass")
                }
            
            ProfileView()
                .tabItem {
                    Label("My List", systemImage: "star")
                }
        }
    }
}

struct MainView_Previews: PreviewProvider {
    static var previews: some View {
        MainView()
    }
}
