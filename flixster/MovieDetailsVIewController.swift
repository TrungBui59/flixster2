//
//  MovieDetailsVIewController.swift
//  flixster
//
//  Created by Trung Bui on 2/1/23.
//

import UIKit
import AlamofireImage
class MovieDetailsVIewController: UIViewController {
    @IBOutlet weak var backdrop: UIImageView!
    
    @IBOutlet weak var posterView: UIImageView!
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var sypnosisLabel: UILabel!
    var movie: [String:Any]!
    override func viewDidLoad() {
        
        
        super.viewDidLoad()
        
        titleLabel.text = movie["title"] as? String
        sypnosisLabel.text = movie["overview"] as? String
        let baseUrl = "https://image.tmdb.org/t/p/w185"
        let posterPath = movie["poster_path"] as! String
        let posterUrl = URL(string: baseUrl + posterPath)
        posterView.af.setImage(withURL: posterUrl!)
        
        let backdropPath = movie["backdrop_path"] as! String
        let backdropUrl = URL(string: baseUrl + backdropPath)
        backdrop.af.setImage(withURL: backdropUrl!)
        


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
