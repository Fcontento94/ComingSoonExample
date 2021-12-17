//______View per la Scroll Viev delle Cover

import SwiftUI

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
