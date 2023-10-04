//
//  ViewController.swift
//  AlertProject
//
//  Created by Selçuk İleri on 4.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var password2Text: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func signupClicked(_ sender: Any) {
        /*
        let alert = UIAlertController(title: "Error!", message: "Username not found!", preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
         */
        if(usernameText.text == "") {
            alert(titleInput: "Error", messageInput: "Username not found")
        } else if (passwordText.text == ""){
            alert(titleInput: "Error", messageInput: "Password not found")
        } else if (passwordText.text != password2Text.text) {
            alert(titleInput: "Error", messageInput: "Passwords does not match")
        } else {
            alert(titleInput: "Success", messageInput: "User OK")
        }
        
    }
    
    func alert(titleInput: String, messageInput:String){
        let alert = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let okButton = UIAlertAction(title: "OK", style: UIAlertAction.Style.default)
        alert.addAction(okButton)
        self.present(alert, animated: true)
    }
    
    
}

