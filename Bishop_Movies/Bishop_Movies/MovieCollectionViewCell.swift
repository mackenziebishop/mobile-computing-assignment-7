//
//  MovieCollectionViewCell.swift
//  Bishop_Movies
//
//  Created by Bishop,Mackenzie N on 11/30/22.
//

import UIKit

class MovieCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var imageViewOutlet: UIImageView!
    
    func assignMovie(with movie: Movie){
        imageViewOutlet.image = movie.image
    }
}
