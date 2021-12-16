////
////  FeaturedView.swift
////  ComingSoon
////
////  Created by Federica Contento on 11/12/21.
////
//
//import SwiftUI
//
//struct FeaturedView: View {
//    var body: some View {
//        
//        TabView{
//            ForEach(featuredMovies, id: \.id) { item in
//                FeaturedMovie(featuredMovies: item)
//            }
//
//        }
//        .tabViewStyle(.page)
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 350)
//        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.569, saturation: 0.055, brightness: 0.963)/*@END_MENU_TOKEN@*/)
//
//
//    
//    
//        //_____Mostrare L'index
//    
////        .tabViewStyle(.page)
//
//        //_____Mostrare L'index con un background
//
//        .tabViewStyle(.page)
////        .indexViewStyle(.page(backgroundDisplayMode: .always))
//        .frame(minWidth: 0, maxWidth: .infinity, minHeight: 0, maxHeight: 350)
//        .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.569, saturation: 0.055, brightness: 0.963)/*@END_MENU_TOKEN@*/)
//
//        
//        //_____NON Mostrare L'index
////        .tabViewStyle(.page(indexDisplayMode: .never))
//
//    }
//}
//
//struct FeaturedView_Previews: PreviewProvider {
//    static var previews: some View {
//        FeaturedView()
//    }
//}
