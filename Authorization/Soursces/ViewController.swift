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
    
    private lazy var facebookButton: UIButton = {
        let facebookButton = UIButton(type: .custom)
        facebookButton.setImage(UIImage(systemName: "bonjour"), for: .normal)
        facebookButton.imageView?.tintColor = .white
        facebookButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        facebookButton.setTitle("Facebook", for: .normal)
        facebookButton.setTitleColor(UIColor.white, for: .normal)
        facebookButton.clipsToBounds = true
        facebookButton.layer.cornerRadius = 20
        facebookButton.layer.borderWidth = 1
        facebookButton.layer.borderColor = UIColor.blue.cgColor
        facebookButton.backgroundColor = .blue
        facebookButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return facebookButton
    }()
    
    private lazy var twiterButton: UIButton = {
        let twiterButton = UIButton(type: .custom)
        twiterButton.setImage(UIImage(systemName: "network"), for: .normal)
        twiterButton.imageView?.tintColor = .white
        twiterButton.imageEdgeInsets = UIEdgeInsets(top: 0, left: -20, bottom: 0, right: 0)
        twiterButton.setTitle("Twiter", for: .normal)
        twiterButton.setTitleColor(UIColor.white, for: .normal)
        twiterButton.clipsToBounds = true
        twiterButton.layer.cornerRadius = 20
        twiterButton.layer.borderWidth = 1
        twiterButton.layer.borderColor = UIColor.blue.cgColor
        twiterButton.backgroundColor = .blue
        twiterButton.addTarget(self, action: #selector(buttonPressed), for: .touchUpInside)
        return twiterButton
    } ()
    
    private lazy var loginTextField: UITextField = {
        let loginTextField = UITextField()
        loginTextField.placeholder = "admin_users"
        if let image = UIImage(systemName: "person") {
            loginTextField.setLeftIcon(image)
        }
        if let image = UIImage(systemName: "checkmark.circle.fill") {
            loginTextField.setRightIcon(image)
        }
        loginTextField.clipsToBounds = true
        loginTextField.layer.cornerRadius = 20
        loginTextField.backgroundColor = .lightGray
        return loginTextField
    }()
    
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
    
    
    
    
    private lazy var loginLabel: UILabel = {
        let loginLabel = UILabel()
        loginLabel.text = "Login"
        loginLabel.textColor = .white
        loginLabel.font = UIFont.boldSystemFont(ofSize: 34)
        return loginLabel
    }()
    
    private lazy var dontLabel: UILabel = {
        let dontLabel = UILabel()
        dontLabel.text = "Dont have account ?  Sign up"
        dontLabel.textColor = .white
        dontLabel.font = UIFont.boldSystemFont(ofSize: 14)
        return dontLabel
    }()
    
    private lazy var forgetLabel: UILabel = {
        let forgetLabel = UILabel()
        forgetLabel.text = "Forget your password ?"
        forgetLabel.textColor = .white
        forgetLabel.font = UIFont.boldSystemFont(ofSize: 14)
        return forgetLabel
    }()
    
    private lazy var connectLabel: UILabel = {
        let connectLabel = UILabel()
        connectLabel.text = "or connect with"
        connectLabel.textColor = .white
        connectLabel.font = UIFont.boldSystemFont(ofSize: 14)
        return connectLabel
    }()
    
    private lazy var leftConnectView: UIView = {
        let leftConnectView = UIView()
        leftConnectView.layer.cornerRadius = 20
        leftConnectView.backgroundColor = .black
        return leftConnectView
    }()
    
    private lazy var rightConnectView: UIView = {
        let rightConnectView = UIView()
        rightConnectView.layer.cornerRadius = 20
        rightConnectView.backgroundColor = .black
        return rightConnectView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .darkGray
        setupHierarchy()
        setupLayout()
    }
    
    func setupHierarchy() {
        view.addSubview(passwordTextField)
        view.addSubview(loginTextField)
        view.addSubview(loginButton)
        view.addSubview(loginLabel)
        view.addSubview(dontLabel)
        view.addSubview(forgetLabel)
        view.addSubview(connectLabel)
        view.addSubview(leftConnectView)
        view.addSubview(rightConnectView)
        view.addSubview(facebookButton)
        view.addSubview(twiterButton)
        
    }
    
    func setupLayout() {
        
        loginLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(view).offset(150)
        }
        
        dontLabel.snp.makeConstraints { make in
            // make.left.equalTo(view).offset(100)
            make.centerX.equalTo(view)
            make.top.equalTo(facebookButton.snp.bottom).offset(30)
            //make.right.equalTo(view.snp.centerX).offset(-20)
        }
        
        forgetLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginButton.snp.bottom).offset(30)
            //make.right.equalTo(view.snp.centerX).offset(-20)
        }
        
        
        
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
        
        leftConnectView.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.width.equalTo(400)
            make.left.equalTo(view).offset(50)
            make.top.equalTo(loginButton.snp.bottom).offset(120)
            make.right.equalTo(view.snp.centerX).offset(-50)
        }
        
        connectLabel.snp.makeConstraints { make in
            make.centerX.equalTo(view)
            make.top.equalTo(loginButton.snp.bottom).offset(110)
            //make.right.equalTo(view.snp.centerX).offset(-20)
        }
        
        rightConnectView.snp.makeConstraints { make in
            make.height.equalTo(2)
            make.width.equalTo(290)
            make.left.equalTo(view.snp.centerX).offset(50)
            make.right.equalToSuperview().offset(-50)
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
