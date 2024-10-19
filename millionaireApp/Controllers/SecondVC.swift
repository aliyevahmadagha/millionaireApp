//
//  SecondVC.swift
//  millionaireApp
//
//  Created by Khalida Aliyeva on 02.10.24.
//

import UIKit

class SecondVC: UIViewController {
    
    
    
    let backgroundImage: UIImageView = {
        
        let image = UIImageView()
        image.image = UIImage(named: "bgImage")
        image.alpha = 0.2
        return image
        
    }()
    
    
    let closeOpenEyeImage: UIImageView = {
        
        let image = UIImageView()
        
        image.contentMode = .scaleAspectFit
        image.image = UIImage(named: "closeEye")
        return image
        
    }()
    
    
    
    let view1: UIView = {
        
        let view = UIView()
        return view
        
    }()
    
    
    let view11: UIView = {
        
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 7
        view.layer.borderWidth = 1
        return view
        
    }()
    
    
    let view2: UIView = {

        let view = UIView()
        return view
        
    }()
    
    
    let view22: UIView = {
        
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 7
        view.layer.borderWidth = 1
        return view
        
    }()
    
    
    let view3: UIView = {
        
        let view = UIView()
        return view
        
    }()
    
    
    let view4: UIView = {
        
        let view = UIView()
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 7
        return view
        
    }()
    
    
    let view33: UIView = {
        
        let view = UIView()
        view.backgroundColor = .white
        view.layer.cornerRadius = 7
        view.layer.borderWidth = 1
        return view
        
    }()
    
    
    let horizontalSatck: UIStackView = {
        
        let stack = UIStackView()
        stack.axis = .horizontal
        return stack
        
    }()
    
    
    let createLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Create Account"
        label.textColor = .black
        label.textAlignment = .center
        return label
        
    }()
    
    
    let label2: UILabel = {
        let label = UILabel()
        
        label.text = "Find the things that you love!"
        label.textColor = .black
        label.textAlignment = .center
        
        return label
        
    }()
    
    
    let fullnameLabel: UILabel = {
        
        let label = UILabel()
        
        label.text = "Full Name"
        
        label.font = UIFont.systemFont(ofSize: 10)
        
        return label
        
    }()
    
    
    let fullnameTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "Enter your name"
        
        return textField
        
    }()
    
    
    let emailLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Email"
        label.font = UIFont.systemFont(ofSize: 10)
        
        return label
    }()
    
    
    let emailTextField: UITextField = {
        let textField = UITextField()
        
        textField.placeholder = "Enter Your Email"

        return textField
        
    }()
    
    
    let passwordLabel: UILabel = {
        
        let label = UILabel()
        label.text = "Password"
        label.font = UIFont.systemFont(ofSize: 10)
        return label
        
    }()
    
    
    let passwordTextField: UITextField = {
        
        let textField = UITextField()
        textField.placeholder = "Enter Your Password"
        textField.isSecureTextEntry = true
        return textField
        
    }()
    
    
    lazy var signUpButton: UIButton = {
        
        let button = UIButton()
        
        button.addTarget(self, action: #selector(signAction), for: .touchUpInside)
        
        button.setTitle("Sign Up", for: .normal)
        button.setTitleColor(.white, for: .normal)

        button.layer.cornerRadius = 5

        return button
        
    }()
    
    
    lazy var loginButton: UIButton = {
        
        let button = UIButton()
        
        button.addTarget(self, action: #selector(loginAction), for: .touchUpInside)
        button.setTitle("Login", for: .normal)
        button.layer.cornerRadius = 5
        button.setTitleColor(.blue, for: .normal)
        
        return button
        
    }()
    
    
    let loginLabel: UILabel = {
        let label = UILabel()
        
        label.text = "Already have an account?"
        
        label.font = UIFont.systemFont(ofSize: 18)
        
        return label
        
    }()
    
    
    
    @objc func signAction() {
        
            
            
            let storyboard = UIStoryboard(name: "Main", bundle:  nil)
            let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
            
            navigationController?.pushViewController(controller, animated: true)
        
        
        
    }
    
    
    @objc func loginAction() {
        
        let storyboard = UIStoryboard(name: "Main", bundle: nibBundle)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginVC") as! LoginVC
        
        navigationController?.pushViewController(controller, animated: true)
        
        
    }
    
    
    let u = UserDefaults.standard

    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let tap = UITapGestureRecognizer(target: self, action: #selector(openClose))
        closeOpenEyeImage.isUserInteractionEnabled = true
        closeOpenEyeImage.addGestureRecognizer(tap)

        setupConstraints()
        
    }
    
    
    @objc func openClose() {
        
        if closeOpenEyeImage.image == UIImage(named: "closeEye") {
            
            closeOpenEyeImage.image = UIImage(named: "openEye")
            passwordTextField.isSecureTextEntry = false
            
        } else {
            
            closeOpenEyeImage.image = UIImage(named: "closeEye")
            passwordTextField.isSecureTextEntry = true
            
        }
        
    }  
    
    
    func setupConstraints() {
        
        view.addSubview(createLabel)
        view.addSubview(label2)
        view.addSubview(backgroundImage)
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        view.addSubview(view4)
        view1.addSubview(view11)
        view2.addSubview(view22)
        view3.addSubview(view33)
        view.addSubview(horizontalSatck)
        view2.addSubview(emailLabel)
        view1.addSubview(fullnameLabel)
        view3.addSubview(passwordLabel)
        view4.addSubview(signUpButton)
        horizontalSatck.addArrangedSubview(loginLabel)
        horizontalSatck.addArrangedSubview(loginButton)
        view11.addSubview(fullnameTextField)
        view22.addSubview(emailTextField)
        view33.addSubview(passwordTextField)
        view33.addSubview(closeOpenEyeImage)
        
        
        backgroundImage.translatesAutoresizingMaskIntoConstraints = false
        createLabel.translatesAutoresizingMaskIntoConstraints = false
        label2.translatesAutoresizingMaskIntoConstraints = false
        view1.translatesAutoresizingMaskIntoConstraints = false
        view2.translatesAutoresizingMaskIntoConstraints = false
        view3.translatesAutoresizingMaskIntoConstraints = false
        view4.translatesAutoresizingMaskIntoConstraints = false
        emailLabel.translatesAutoresizingMaskIntoConstraints = false
        emailTextField.translatesAutoresizingMaskIntoConstraints = false
        passwordLabel.translatesAutoresizingMaskIntoConstraints = false
        passwordTextField.translatesAutoresizingMaskIntoConstraints = false
        fullnameTextField.translatesAutoresizingMaskIntoConstraints = false
        view11.translatesAutoresizingMaskIntoConstraints = false
        view22.translatesAutoresizingMaskIntoConstraints = false
        view33.translatesAutoresizingMaskIntoConstraints = false
        fullnameLabel.translatesAutoresizingMaskIntoConstraints = false
        signUpButton.translatesAutoresizingMaskIntoConstraints = false
        horizontalSatck.translatesAutoresizingMaskIntoConstraints = false
        closeOpenEyeImage.translatesAutoresizingMaskIntoConstraints = false
        

        
        
        backgroundImage.topAnchor.constraint(equalTo: view.topAnchor, constant: 0).isActive = true
        backgroundImage.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        backgroundImage.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 0).isActive = true
        backgroundImage.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 0).isActive = true
        
        createLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 89).isActive = true
        createLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -44).isActive = true
        createLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 49).isActive = true
        
        
        label2.topAnchor.constraint(equalTo: view.topAnchor, constant: 139).isActive = true
        label2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 31).isActive = true
        label2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -27).isActive = true
                
        
        
        view1.topAnchor.constraint(equalTo: view.topAnchor, constant: 194).isActive = true
        view1.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -575).isActive = true
        view1.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37).isActive = true
        view1.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -39).isActive = true
        
        view2.topAnchor.constraint(equalTo: view.topAnchor, constant: 281).isActive = true
        view2.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -488).isActive = true
        view2.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 37).isActive = true
        view2.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -39).isActive = true
        
        view3.topAnchor.constraint(equalTo: view.topAnchor, constant: 368).isActive = true
        view3.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -401).isActive = true
        view3.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39).isActive = true
        view3.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37).isActive = true
        
        view4.topAnchor.constraint(equalTo: view.topAnchor, constant: 477).isActive = true
        view4.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -323).isActive = true
        view4.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39).isActive = true
        view4.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -37).isActive = true
        
        
        
        
        
        view11.topAnchor.constraint(equalTo: view1.topAnchor, constant: 19).isActive = true
        view11.bottomAnchor.constraint(equalTo: view1.bottomAnchor, constant: -16).isActive = true
        view11.leadingAnchor.constraint(equalTo: view1.leadingAnchor, constant: 2.09).isActive = true
        view11.trailingAnchor.constraint(equalTo: view1.trailingAnchor, constant: -0.09).isActive = true
        
        view22.topAnchor.constraint(equalTo: view2.topAnchor, constant: 19).isActive = true
        view22.bottomAnchor.constraint(equalTo: view2.bottomAnchor, constant: -16).isActive = true
        view22.leadingAnchor.constraint(equalTo: view2.leadingAnchor, constant: 2.09).isActive = true
        view22.trailingAnchor.constraint(equalTo: view2.trailingAnchor, constant: -0.09).isActive = true
        
        view33.topAnchor.constraint(equalTo: view3.topAnchor, constant: 19).isActive = true
        view33.bottomAnchor.constraint(equalTo: view3.bottomAnchor, constant: -16).isActive = true
        view33.leadingAnchor.constraint(equalTo: view3.leadingAnchor, constant: 2.09).isActive = true
        view33.trailingAnchor.constraint(equalTo: view3.trailingAnchor, constant: -0.09).isActive = true
        
        
        
        fullnameLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 194).isActive = true
        fullnameLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -633).isActive = true
        fullnameLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39.09).isActive = true
        fullnameLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -273.91).isActive = true
        
        emailLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 281).isActive = true
        emailLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -546).isActive = true
        emailLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 39.09).isActive = true
        emailLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -273.91).isActive = true
        
        passwordLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 368).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -459).isActive = true
        passwordLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 41.09).isActive = true
        passwordLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -271.91).isActive = true
        
        signUpButton.topAnchor.constraint(equalTo: view4.topAnchor, constant: 10).isActive = true
        signUpButton.bottomAnchor.constraint(equalTo: view4.bottomAnchor, constant: -10).isActive = true
        signUpButton.leadingAnchor.constraint(equalTo: view4.leadingAnchor, constant: 10).isActive = true
        signUpButton.trailingAnchor.constraint(equalTo: view4.trailingAnchor, constant: -10).isActive = true
        
        horizontalSatck.topAnchor.constraint(equalTo: view.topAnchor, constant: 545).isActive = true
        horizontalSatck.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -269).isActive = true
        horizontalSatck.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 71).isActive = true
        horizontalSatck.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -64).isActive = true
        
        fullnameTextField.topAnchor.constraint(equalTo: view11.topAnchor, constant: 10).isActive = true
        fullnameTextField.bottomAnchor.constraint(equalTo: view11.bottomAnchor, constant: -10).isActive = true
        fullnameTextField.leadingAnchor.constraint(equalTo: view11.leadingAnchor, constant: 31).isActive = true
        fullnameTextField.trailingAnchor.constraint(equalTo: view11.trailingAnchor, constant: -31).isActive = true
        
        emailTextField.topAnchor.constraint(equalTo: view22.topAnchor, constant: 10).isActive = true
        emailTextField.bottomAnchor.constraint(equalTo: view22.bottomAnchor, constant: -10).isActive = true
        emailTextField.leadingAnchor.constraint(equalTo: view22.leadingAnchor, constant: 31).isActive = true
        emailTextField.trailingAnchor.constraint(equalTo: view22.trailingAnchor, constant: -31).isActive = true
        
        passwordTextField.topAnchor.constraint(equalTo: view33.topAnchor, constant: 10).isActive = true
        passwordTextField.bottomAnchor.constraint(equalTo: view33.bottomAnchor, constant: -10).isActive = true
        passwordTextField.leadingAnchor.constraint(equalTo: view33.leadingAnchor, constant: 16).isActive = true
        passwordTextField.trailingAnchor.constraint(equalTo: view33.trailingAnchor, constant: -46).isActive = true
        
        closeOpenEyeImage.topAnchor.constraint(equalTo: view33.topAnchor, constant: 10).isActive = true
        closeOpenEyeImage.bottomAnchor.constraint(equalTo: view33.bottomAnchor, constant: -10).isActive = true
        closeOpenEyeImage.leadingAnchor.constraint(equalTo: view33.leadingAnchor, constant: 276).isActive = true
        closeOpenEyeImage.trailingAnchor.constraint(equalTo: view33.trailingAnchor, constant: -16).isActive = true
        
    }

}
