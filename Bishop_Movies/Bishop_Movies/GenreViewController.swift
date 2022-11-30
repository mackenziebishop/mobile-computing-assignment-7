//
//  ViewController.swift
//  Bishop_Movies
//
//  Created by Bishop,Mackenzie N on 11/29/22.
//

import UIKit

class GenreViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return genre.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = genreTableView.dequeueReusableCell(withIdentifier: "sectionCell", for: indexPath)
        
        cell.textLabel?.text = genre[indexPath.row].category
        
        return cell
    }
    @IBOutlet weak var genreTableView: UITableView!
    
    var genre = [Genre]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        genreTableView.delegate = self
        genreTableView.dataSource = self
        
        let genre1 = Genre(category: "Mystery")
        genre.append(genre1)
        
        let genre2 = Genre(category: "Action")
        genre.append(genre2)
        
        let genre3 = Genre(category: "Romantic Comedy")
        genre.append(genre3)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let transition = segue.identifier
        if transition == "movieSegue"{
            let destination = segue.destination as! MoviesViewController
            destination.genres = genre[(genreTableView.indexPathForSelectedRow?.row)!]
        }
    }
}

