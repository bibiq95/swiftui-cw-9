//
//  ContentView.swift
//  day4ex2
//
//  Created by alqattan on 29/12/2020.
//

import SwiftUI

struct ContentView: View {
    
    var body: some View {
        VStack{
            List{
                movierow( moviename :"Matilda" , moviecharacters : ["Mara Wilson" ,"Danny Devito","Pam Ferris" ])
                movierow( moviename :"toy story" , moviecharacters : ["Tom Hanks ", "Tim Allen",  "Don Rickles" ])
                movierow( moviename :"The Little Rascals" , moviecharacters : ["Bug Hall","Brittany Ashton","Travis Tedford"])

            
            
        }
    }
}
struct movierow: View{
    let moviename : String
    let moviecharacters:[String]
    var body: some View {
        HStack (alignment: .center ){
            Image(moviename)
                .resizable()
                .frame(width:80 , height:90)
                .scaledToFit()
                
                .clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
            VStack{
                Text(moviename)
                    .font(.largeTitle)
                Text(moviecharacters .joined(separator: ","))
            }
            
        }
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewDevice("iPhone 12")
    }
}
}
