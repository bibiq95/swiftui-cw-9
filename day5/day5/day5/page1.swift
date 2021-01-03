//
//  page1.swift
//  day5
//
//  Created by alqattan on 02/01/2021.
//

import SwiftUI

struct page1: View {
    var movie :Movie
    var body: some View {
        
        ZStack{
            Group{
                Image(movie.moviename)
                    .resizable()
                    .scaledToFit()
                    .blur(radius: 40)
                Color.black.opacity(0.3)
            }.edgesIgnoringSafeArea(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
        
        
            VStack(alignment: .center){
                Image(movie.moviename)
                .resizable()
                .scaledToFit()
                .frame(width:300)
                .background(Color.blue)
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                .overlay(Circle().stroke(Color.white ,lineWidth: 6))
                
                Text(movie.moviename)
                    .font(.system(size: 50))
                    .bold()
                Text(movie.moviecharacters .joined(separator: ","))
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
            }
                .padding(.vertical)
                .foregroundColor(.white)
            .shadow(radius: 8 )
        
        }
        }
    }

struct page1_Previews: PreviewProvider {
    static var previews: some View {
        
        page1(movie:Movie(moviename:"Matilda",moviecharacters: ["Mara Wilson" ,"Danny Devito","Pam Ferris" ]))
        
        
    }
}

