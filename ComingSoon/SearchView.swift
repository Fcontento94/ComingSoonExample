//
//  SearchView.swift
//  ComingSoon
//
//  Created by Federica Contento on 10/12/21.
//

import SwiftUI

struct SearchView: View {
    var body: some View {
        
        NavigationView{
        
        Image ("wip")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(.horizontal, 100.0)
            .frame(width: 300.0, height: 300.0)
            
            
            .navigationBarTitle(Text("Discover"))
        }
        
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
    }
}
