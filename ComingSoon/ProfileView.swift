//
//  ProfileView.swift
//  ComingSoon
//
//  Created by Federica Contento on 10/12/21.
//

import SwiftUI

struct ProfileView: View {
    var body: some View {
        
        NavigationView{
        
        Image ("wip")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .padding(.horizontal, 100.0)
            .frame(width: 300.0, height: 300.0)
            
            
            .navigationBarTitle(Text("Watchlist"))
        }
     
        
    }
    
}

struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
