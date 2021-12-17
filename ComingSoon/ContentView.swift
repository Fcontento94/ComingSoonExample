//
//  ContentView.swift
//  ComingSoon
//
//  Created by Federica Contento on 10/12/21.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView{
            
            ScrollView(.vertical, showsIndicators: false) {
                
     
//Section 1 top: Featured Today List
                
Section {
                                                                        
    TabView{
        ForEach(movies.filter{return $0.featured == true}, id: \.id) {
            item in NavigationLink(destination: DetailView(movieDetail: item)){
                FeaturedMovieView(fmovies: item)
                                                                                      
            }
        }
     }
    .tabViewStyle(.page)
    .frame(width: 400, height: 250)

}

                    
//Section 2: Coming Soon List
                
        Section {
        
            ScrollView(.horizontal, showsIndicators: false) {
                
           
                HStack{
                    
                    ForEach(movies.filter{return $0.featured == false}, id: \.id) {
                      item in NavigationLink(destination: DetailView(movieDetail: item)){
                      
                      MovieView(movies: item)
                          
                      }
                    }
                }
            }
            .padding(10.0)
            .background(Color.white.opacity(0.6))
            .frame(height: 340.0)
            .shadow(color: Color.gray.opacity(0.2), radius: 1)


         }
            header: {
             
             HStack{
                 
                 Text("Coming Soon")
                     .font(.title2)
                     .fontWeight(.bold)
                     .padding(.trailing, 80.0)
                     .frame(width: 250.0, height: 50.0)
                  Spacer()
             }
         }
                
                
        
                

//Section 3: Discover
                
                
                Section {
                    
                
                    ScrollView(.horizontal, showsIndicators: false) {

                        
                        HStack{
                            
                            ForEach(movies, id: \.id) {
                              item in NavigationLink(destination: DetailView(movieDetail: item)){
                              
                              MovieView(movies: item)
                                  
                              }
                            }
                        }
                    }
                    .padding(10.0)
                    .background(Color.white.opacity(0.6))
                    .frame(height: 340.0)

                 }  header: {
                     
                     HStack{
                         
                         Text("Suggested for you")
                             .font(.title2)
                             .fontWeight(.bold)
                             .padding(.trailing, 30.0)
                             .frame(width: 250.0, height: 50.0)
                          Spacer()
                     }
                 }
                
//Section 4: Draft
                                
                                Section {
                                    
                                
                                    ScrollView(.horizontal, showsIndicators: false) {
                                        
                                        
                                   
                                        HStack{
                                            
                                            ForEach(movies.filter{return $0.featured == true}, id: \.id) {
                                              item in NavigationLink(destination: DetailView(movieDetail: item)){
                                              
                                              MovieView(movies: item)
                                                  
                                              }
                                            }
                                        }
                                    }
                                    .padding(10.0)
                                    .background(Color.white.opacity(0.6))
                                        .frame(height: 340.0)

                                 }  header: {
                                     
                                     HStack{
                                         
                                         Text("Example")
                                             .font(.title2)
                                             .fontWeight(.bold)
                                             .padding(.trailing, 160.0)
                                             .frame(width: 290.0, height: 50.0)
                                          Spacer()
                                     }
                                 }
                
                
                //Section 4: Draft
                                                
                                                Section {
                                                    
                                                
                                                    ScrollView(.horizontal, showsIndicators: false) {
                                                        
                                                        
                                                   
                                                        HStack{
                                                            
                                                            ForEach(movies.filter{return $0.featured == true}, id: \.id) {
                                                              item in NavigationLink(destination: DetailView(movieDetail: item)){
                                                              
                                                              MovieView(movies: item)
                                                                  
                                                              }
                                                            }
                                                        }
                                                    }
                                                    .padding(10.0)
                                                    .background(Color.white.opacity(0.6))
                                                        .frame(height: 340.0)

                                                 }  header: {
                                                     
                                                     HStack{
                                                         
                                                         Text("Example")
                                                             .font(.title2)
                                                             .fontWeight(.bold)
                                                             .padding(.trailing, 160.0)
                                                             .frame(width: 290.0, height: 50.0)
                                                          Spacer()
                                                     }
                                                 }
                
                
//Fine Content View
                                            
      
            }
            .background(/*@START_MENU_TOKEN@*//*@PLACEHOLDER=View@*/Color(hue: 0.569, saturation: 0.055, brightness: 0.963)/*@END_MENU_TOKEN@*/)
.navigationBarTitle(Text("Shows"))



    }
        
    }
}

