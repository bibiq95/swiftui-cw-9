//
//  movie.swift
//  day5
//
//  Created by alqattan on 02/01/2021.
//

import Foundation
struct Movie : Identifiable {
    var moviename: String
    var moviecharacters : [String]
    let id = UUID()
}
var movies = [Movie(moviename:"Matilda", moviecharacters: ["Mara Wilson" ,"Danny Devito","Pam Ferris"]),
              Movie(moviename:"toy story", moviecharacters: ["Tom Hanks ", "Tim Allen",  "Don Rickles" ]),
              Movie(moviename:"The Little Rascals", moviecharacters: ["Bug Hall","Brittany Ashton","Travis Tedford" ])
]
