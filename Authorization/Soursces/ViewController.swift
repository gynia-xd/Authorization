//
//  ViewController.swift
//  Authorization
//
//  Created by Пётр  on 19.01.2023.
//

import UIKit
import SnapKit

class ViewController: UIViewController {
    
    private lazy var loginButton: UIButton = {
        let loginButton = UIButton()
        loginButton.setTitle("Login", for: .normal)
        loginButton.setTitleColor(UIColor.white, for: .normal)
        loginButton.backgroundColor = .blue
        loginButton.clipsToBounds = true
        loginButton.layer.cornerRadius = 20
        loginButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        loginButton.translatesAutoresizingMaskIntoConstraints = false
        return loginButton
    } ()
    
   /* private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton()
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(UIColor.white, for: .normal)
        facebookButton.backgroundColor = .blue
        facebookButton.clipsToBounds = true
        facebookButton.layer.cornerRadius = 20
        facebookButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        facebookButton.translatesAutoresizingMaskIntoConstraints = false
        return facebookButton
    } ()
    */
    private lazy var facebookButton: UIButton = {
            let facebookButton = UIButton(type: .custom)
            facebookButton.setImage(UIImage(systemName: "bonjour"), for: .normal)
            facebookButton.imageView?.tintColor = .black
            facebookButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
            facebookButton.setTitle("Facebook", for: .normal)
            facebookButton.setTitleColor(UIColor.black, for: .normal)
            facebookButton.clipsToBounds = true
            facebookButton.layer.cornerRadius = 20
            facebookButton.layer.borderWidth = 1
            facebookButton.layer.borderColor = UIColor.black.cgColor
            facebookButton.backgroundColor = .clear
            facebookButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
            return facebookButton
        }()
    
    private lazy var twiterButton: UIButton = {
        let twiterButton = UIButton(type: .custom)
        twiterButton.setImage(UIImage(systemName: "person.wave.2"), for: .normal)
        twiterButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        twiterButton.imageView?.tintColor = .red
        twiterButton.setTitle("Twiter", for: .normal)
        twiterButton.setTitleColor(UIColor.white, for: .normal)
        twiterButton.backgroundColor = .blue
        twiterButton.clipsToBounds = true
        twiterButton.layer.cornerRadius = 20
        twiterButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        twiterButton.translatesAutoresizingMaskIntoConstraints = false
        return twiterButton
    } ()
    
    private lazy var passwordTextField: UITextField = {
        let passwordTextField = UITextField()
        passwordTextField.placeholder = "Password"
        if let image = UIImage(systemName: "square.and.arrow.up") {
        passwordTextField.setLeftIcon(image)
        }
        passwordTextField.clipsToBounds = true
        passwordTextField.layer.cornerRadius = 20
        passwordTextField.backgroundColor = .lightGray
        return passwordTextField
    } ()
    
 
    
    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.placeholder = "Login"

        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 20
        loginTextField.backgroundColor = .lightGray
        return loginTextField
    }()
    
    private lazy var loginLabel: UILabel = {
        let loginLabel = UILabel()
        loginLabel.text = "Login"
        return loginLabel
    }()
    
    private lazy var connectView: UIView = {
        let connectView = UIView()
        connectView.layer.cornerRadius = 20
        connectView.backgroundColor = .black
        return connectView
    }()
     
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        setupHierarchy()
        setupLayout()
    }
    
    func setupHierarchy() {
        view.addSubview(passwordTextField)
        view.addSubview(loginTextField)
        view.addSubview(loginButton)
        view.addSubview(connectView)
        view.addSubview(facebookButton)
        view.addSubview(twiterButton)
        
    }
    
    func setupLayout() {
        passwordTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).offset(-20)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(40)
        }
        
        loginTextField.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.centerY.equalTo(view).offset(-80)
            make.left.equalTo(view).offset(50)
            make.right.equalTo(view).offset(-50)
            make.height.equalTo(40)
        }
        
        loginButton.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.height.equalTo(50)
            make.width.equalTo(290)
            make.top.equalTo(passwordTextField.snp.bottom).offset(30)
        }
        
        connectView.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.height.equalTo(2)
            make.width.equalTo(290)
            make.top.equalTo(loginButton.snp.bottom).offset(120)
        }
        
        facebookButton.snp.makeConstraints { make in
            make.height.equalTo(40)
            make.left.equalTo(view).offset(50)
            make.top.equalTo(loginButton.snp.bottom).offset(150)
            make.right.equalTo(view.snp.centerX).offset(-20)
        }
        
        twiterButton.snp.makeConstraints { make in
            make.centerY.equalTo(facebookButton.snp.centerY)
            make.height.equalTo(40)
            make.left.equalTo(view.snp.centerX).offset(20)
            make.right.equalToSuperview().offset(-50)
            
        }
    }
    
    @objc func buttonPressed() {
        
    }
    
}
