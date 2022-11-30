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
    let movies:[Movie] = [Movie(title: "After The Thin Man", image: UIImage(named: "after_the_thin_man")!, releasedYear: "1936", movieRating: "7.6", boxOffice: "3.156 M", moviePlot: "Recently returned home from vacation, private detective Nick Charles and his socialite wife, Nora, are back on the case when Nora's cousin, Selma, reports her husband Robert missing. As the duo search for the disreputable Robert, Selma's friend David Graham, who secretly pines for her, aids the investigation. When the three begin to unravel Robert's secret life, the missing persons case turns into one of murder.", cast: ["William Powell", "Myrna Loy", "James Stewart"])
    ]
}
