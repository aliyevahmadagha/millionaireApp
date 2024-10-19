//
//  WelcomeVC.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 01.10.24.
//

import UIKit

class WelcomeVC: UIViewController {
    
    //@IBOutlet weak var bgImage: UIImageView!
    // @IBOutlet weak var view1: UIView!
    
    let stackView: UIStackView = {
        let view = UIStackView()
        
        view.axis = .vertical
        view.spacing = 8
        return view
        
    }()
    
    
    let view1: UIView = {
        
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 7
        return view
        
    }()

    
    lazy var startButton: UIButton = {
        
        let button = UIButton()
        button.addTarget(self, action: #selector(startAction), for: .touchUpInside)
        button.setTitle("Get Started", for: .normal)
        return button
        
    }()
    
    @objc func startAction() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "SecondVC") as! SecondVC
        
        navigationController?.pushViewController(controller, animated: true)
        
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupConstraints()
    
    }
    
    
    
    func setupConstraints(){
        
        let imageName = "bgImage"
        let image = UIImage(named: imageName)
        let imageView = UIImageView(image: image)
        
        let imageName2 = "design"
        let image2 = UIImage(named: imageName2)
        let imageView2 = UIImageView(image: image2)
        
        imageView2.contentMode = .scaleToFill
        
        
        
        imageView.contentMode = .scaleToFill
        imageView.alpha = 0.2
        
        view.addSubview(imageView)
         
        imageView.translatesAutoresizingMaskIntoConstraints = false
        
        imageView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        
        imageView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        imageView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        let label = UILabel()
        label.text = "WELCOME TO MILLIONAIRE APP"
        label.font = UIFont.boldSystemFont(ofSize: 24)
        label.numberOfLines = 0
        label.textColor = UIColor.black
        label.textAlignment = .left
 
        let label1 = UILabel()
        label1.font = UIFont.boldSystemFont(ofSize: 24)
        label1.text = "#1 IN DESIGN TUTORIAL"
        label1.numberOfLines = 0
        label1.textColor = UIColor.black
        label1.textAlignment = .center
        
        
        let label2 = UILabel()
        label2.text = "we are the leading online community to teach the web and mobile design from basic to pro."
        label2.numberOfLines = 0
        label2.textColor = UIColor.black
        label2.textAlignment = .center
        
                
        view.addSubview(label)
        view.addSubview(imageView2)
        view.addSubview(stackView)
        view.addSubview(view1)
        view1.addSubview(startButton)
        
        stackView.addArrangedSubview(label1)
        stackView.addArrangedSubview(label2)
        
        label.translatesAutoresizingMaskIntoConstraints = false
        label.topAnchor.constraint(equalTo: view.topAnchor, constant: 108).isActive = true
        label.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        label.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        
        
        imageView2.translatesAutoresizingMaskIntoConstraints = false
        
        imageView2.topAnchor.constraint(equalTo: view.topAnchor, constant: 224).isActive = true
        imageView2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39).isActive = true
        imageView2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -38).isActive = true
        imageView2.heightAnchor.constraint(equalToConstant: 300).isActive = true
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        
        stackView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        stackView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        stackView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -122).isActive = true
        stackView.heightAnchor.constraint(equalToConstant: 152).isActive = true
        
        startButton.translatesAutoresizingMaskIntoConstraints = false
        
        startButton.topAnchor.constraint(equalTo: view1.topAnchor, constant: 10).isActive = true
        startButton.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -10).isActive = true
        startButton.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 10).isActive = true
        startButton.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -10).isActive = true
        
        view1.translatesAutoresizingMaskIntoConstraints = false
        
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 751).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -49).isActive = true
        view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
        view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
        
    }
    



}
