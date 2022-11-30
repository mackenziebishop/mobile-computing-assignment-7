//
//  MovieData.swift
//  Bishop_Movies
//
//  Created by Bishop,Mackenzie N on 11/30/22.
//

import Foundation
import UIKit

//Movie struct
struct Movie{
    let title:String
    let image:UIImage
    let releasedYear:String
    let movieRating:String
    let boxOffice:String
    let moviePlot:String
    let cast:[String]
}

//Genre struct
struct Genre{
    let category:String
    let movies:[Movie] = [
    ]
}
