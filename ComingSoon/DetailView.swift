//
//  DetailView.swift
//  ComingSoon
//
//  Created by Federica Contento on 11/12/21.
//

import SwiftUI

struct DetailView: View {
        
    let movieDetail: Movie
    
    var body: some View {
        
        ScrollView(.vertical, showsIndicators: false) {
        
        VStack{
                        
            ZStack{
                
            Image("\(movieDetail.featuredImageUrl)")
                .resizable()
                .clipped()
                .aspectRatio(contentMode: .fill)
                .frame(width: 400, height: 250)
                
                Image("play-button")
                        .resizable()
                        .clipped()
                        .aspectRatio(contentMode: .fill)
                        .frame(width: 400, height: 250)
                
//                HStack{
//                    Text("Play Trailer:")
//                        .font(.headline)
//                        .fontWeight(.bold)
//                        .opacity(0.8)
//                    
//                    Text("0:46")
//                        .font(.headline)
//                        .opacity(0.6)
//                }
//                .padding(.top, 200.0)
//                .padding(.trailing, 225.0)
//                .foregroundColor(.white)
                    
            }
            
// Sezione dettagli
            
            HStack{
                VStack{
                    
                    //immagine
                    
                    Image("\(movieDetail.imageUrl)")
                        .resizable()
                        .clipped()
                        .aspectRatio(contentMode: .fill)
                        .padding([.top, .leading, .bottom], 20.0)
                        .frame(width: 120, height: 150)
                }
                    //dettagli
                
                VStack{
                    
                    HStack{

                        Text("\(movieDetail.title)")
                            .font(.headline)
                            .fontWeight(.bold)
                            .padding(.trailing, 6.0)
                        Spacer()
                    }.padding(.vertical, 0.2)
                    
                    
                    HStack{

                        Text("\(movieDetail.genres)")
//                            .font(.subheadline)
//                            .fontWeight(.ultraLight)
                        
                            .font(.caption2)
                            .fontWeight(.bold)
                            .opacity(0.5)
                            .textCase(/*@START_MENU_TOKEN@*/.uppercase/*@END_MENU_TOKEN@*/)
                        
                            .padding(.trailing, 6.0)
                            
                        
                        Spacer()
                    }
                    .padding(.top, 0.2)
                    
                    Rectangle()
                        .frame(width: 280.0, height: 0.5)
                        .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                    
                    
                    
                    HStack{
                        Text("Release Date:")
                            .font(.headline)
                            .fontWeight(.bold)
                            
                        Text("\(movieDetail.year)")
                            .font(.subheadline)
                        Spacer()

                    }
                    
                    HStack{
                        Text("Director:")
                            .font(.headline)
                            .fontWeight(.bold)
                            
                        Text("\(movieDetail.director)")
                            .font(.subheadline)
                        Spacer()

                    }

                    HStack{
                        Text("Duration:")
                            .font(.headline)
                            .fontWeight(.bold)

                        Text("\(movieDetail.duration) min")
                            .font(.subheadline)
                        Spacer()

                    }

                    HStack{
                        Text("Rating:")
                            .font(.headline)
                            .fontWeight(.bold)
                        
                        Text("\(movieDetail.rating) / 5")
                            .font(.subheadline)
                        Spacer()
                    }

                }
                .padding(.leading, 10.0)
                .frame(width: nil, height: 1.0)
            }
            .frame(height: 180.0)

// Sezione Storyline
            
            HStack{
                Text("Storyline")
                    .font(.title2)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.leading)
                    .padding(.trailing, 130.0)
                    .padding(.leading, 22)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .frame(height: 20.0)
                
                Spacer()
            }
            
        
            Text("\(movieDetail.plot)")
                .multilineTextAlignment(.leading)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 22)
                .padding(.trailing, 25)
                .padding(.vertical, 15.0)
            
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
                                     
                                     Text("More Like This")
                                         .font(.title2)
                                         .fontWeight(.bold)
                                         .multilineTextAlignment(.leading)
                                         .padding(.trailing, 130.0)
                                         .padding(.leading, 22)
                                         .frame(maxWidth: .infinity, alignment: .leading)
                                         .frame(height: 20.0)
                                      Spacer()
                                 }
                             }
        
        }
                
            
            
    }        .navigationBarTitle(Text("\(movieDetail.title)"))

    }
    

    
}


