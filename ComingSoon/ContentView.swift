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
                FMovieView(fmovies: item)
                                                                                      
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


//______View per la Scroll Viev delle Cover


struct MovieView: View {
    
    let movies: Movie
    
    var body: some View {
        
        
        ZStack{
            
            Rectangle()
                .foregroundColor(.white)
                .padding(.top, 25.0)
                .frame(width: 150, height: 270)
                .cornerRadius(11)
                .shadow(color: Color.gray.opacity(0.2), radius: 3)

        VStack {
            
            Spacer()

            Image("\(self.movies.imageUrl)")
                .resizable()
                .clipped()
                .aspectRatio(contentMode: .fill)
                .padding(.top, 5.0)
                .frame(width: 150, height: 180)
        
            
            HStack{
                Spacer()
            }
            .padding(.top)
            
            VStack{
                
                HStack {
                    Spacer()
                        .frame(width: 0.5)
                        
                Text(self.movies.genres)
                        .font(.caption2)
                        .fontWeight(.bold)
                        .opacity(0.5)
                        .padding(.vertical, 5)
                        .padding(.leading, 10)
                        .frame(maxWidth: .infinity, alignment: .leading)
                        .frame(height: 15)
                }
                .padding(.horizontal, 1.0)
                .textCase(.uppercase)

            
            HStack {

            Text(self.movies.title)
                    .font(.headline)
                    .multilineTextAlignment(.leading)
                    .padding(.top, 0.5)
                    .padding(.leading, 10)
                    .padding(.bottom, 3)
                    .frame(maxWidth: 130, alignment: .leading)
                    .frame(height: 22.0)
            Spacer()
            }
            .padding(.leading, 1.0)
                
                HStack{
                    
                }
                .padding([.top, .leading, .trailing], 5.0)
            }
                
        }
        .padding(.bottom)
                
        }
        .padding(.all, 5.0)
        }
        
    }


// Featured View



struct FMovieView: View {
    
    let fmovies: Movie
    
    var body: some View {
        
            
        VStack {
            
            Image("\(self.fmovies.featuredImageUrl)")
                .resizable()
                .padding(.bottom, 10.0)
                .clipped()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 250)
            

            
        }
    }
        
}

