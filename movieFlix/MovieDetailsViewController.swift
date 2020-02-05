//
//  MovieDetailsViewController.swift
//  movieFlix
//
//  Created by James Morris on 2/2/20.
//  Copyright © 2020 James Morris. All rights reserved.
//

import UIKit
import AlamofireImage

class MovieDetailsViewController: UIViewController {
    
    var movie: [String:Any]!
    
    @IBOutlet weak var bioLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var bgImage: UIImageView!
    @IBOutlet weak var posterImage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        titleLabel.text = movie["title"] as? String
        titleLabel.sizeToFit()
        
        bioLabel.text = movie["overview"] as? String
        bioLabel.sizeToFit()
   
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        
        posterImage.af_setImage(withURL: posterUrl!)
        
        let bgPath = movie["backdrop_path"] as! String
        let bgUrl = URL(string: "https://image.tmdb.org/t/p/w780" + bgPath)
        
        bgImage.af_setImage(withURL: bgUrl!)
        
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
