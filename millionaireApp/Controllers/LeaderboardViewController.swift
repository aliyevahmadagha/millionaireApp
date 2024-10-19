//
//  LeaderboardViewController.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 17.10.24.
//

import UIKit

class LeaderboardViewController: UIViewController {
    
    
   
//    
//    let backgroundImage: UIImageView = {
//        
//        let image = UIImageView()
//        image.image = UIImage(named: "gameBg")
//        return image
//        
//        
//    }()    
    
    
    let backgroundImage2: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(named: "leaderBG2")
        return image
        
        
    }()
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraints()
        view.backgroundColor = UIColor(named: "backgroundGray")

    }
    
    
    func setupConstraints() {
        
        view.addSubview(backgroundImage2)
        
        
//        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        backgroundImage2.translatesAutoresizingMaskIntoConstraints = false
        
        
        
//        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
//        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
//        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
//        backgroundImage.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        
        backgroundImage2.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        backgroundImage2.heightAnchor.constraint(equalToConstant: 324).isActive = true
        
 
        
        
        
        
        
        
    }
    



}
