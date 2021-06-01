//
//  ViewController.swift
//  EViOS1
//
//  Created by Student01 on 01/06/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet var myAvatar: UIImageView!
    @IBOutlet var myBienvenue: UILabel!
    @IBOutlet var myLogin: UITextField!
    @IBOutlet var myPassword: UITextField!
    @IBOutlet var myHide: UIButton!
    @IBOutlet var myNewsletter: UILabel!
    @IBOutlet var mySwitch: UISwitch!
    @IBOutlet var myButton: UIButton!
    var check = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor(patternImage: UIImage(named:"background_image.png")!)
        setupView()
        let tapOnView = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing))
        view.addGestureRecognizer(tapOnView)
        
        
    }

    func setupView(){
        
        myBienvenue.text = "Bienvenue"
        myLogin.placeholder = "Login"
        myPassword.placeholder = "Password"
        myNewsletter.text = "Inscription à la newsletter:"
        myButton.backgroundColor = .systemGreen
        myButton.setTitle("Login", for: .normal)
        myButton.setTitleColor(.white, for: .normal)
        mySwitch.isEnabled = false
        myPassword.isSecureTextEntry = false
        
    }

    @IBAction func pressOnHide(sender: AnyObject) {

        check = !check

        if check == true {
            myHide.setImage(UIImage(named: "eye_off_icon"), for: .normal)
            myPassword.isSecureTextEntry = true
        } else {
            myHide.setImage(UIImage(named: "eye_on_icon"), for: .normal)
            myPassword.isSecureTextEntry = false
        }
    }
}



