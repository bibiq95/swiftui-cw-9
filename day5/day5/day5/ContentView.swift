//
//  ContentView.swift
//  day5
//
//  Created by alqattan on 02/01/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        NavigationView {
            
            
            List(movies){ movie in

                    NavigationLink(
                        destination: page1(movie:movie),
                     label: {
                        movierow(movie:movie)
                     })

                
                }
                    
  
    

            .navigationTitle("movies")
        }
    }
        
    struct movierow: View{
        
        var  movie: Movie

        var body: some View {
            HStack (alignment: .center ){
                Image(movie.moviename)
                    .resizable()
                    .frame(width:80 , height:90)
                    .scaledToFit()
                    
                    .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                VStack{
                    Text(movie.moviename)
                        .font(.largeTitle)
                    Text(movie.moviecharacters .joined(separator: ","))
                }
                
            }
        }
    }
    struct ContentView_Previews: PreviewProvider {
        static var previews: some View {
            ContentView()
                .previewDevice("iPhone 12 mini")
        }
    }
}
