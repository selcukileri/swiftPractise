//
//  ViewController.swift
//  ObjectsWithCode
//
//  Created by Selçuk İleri on 3.10.2023.
//

import UIKit

class ViewController: UIViewController {
    var myLabel = UILabel()
    let myButton = UIButton()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let width = view.frame.size.width
        let height = view.frame.size.height
        
        myLabel.text = "Test Label"
        myLabel.textAlignment = .center
        myLabel.frame = CGRect(x: width / 2 - width * 0.8/2, y: height / 2, width: width*0.8, height: 50)
        view.addSubview(myLabel)
        
        myButton.setTitle("My Button", for: UIControl.State.normal)
        myButton.setTitleColor(UIColor.blue, for: UIControl.State.normal)
        myButton.frame = CGRect(x: width * 0.5-100, y: height * 0.6, width: 200, height: 100)
        view.addSubview(myButton)
        myButton.addTarget(self, action: #selector(ViewController.myAction), for: UIControl.Event.touchUpInside)
    }
    
    @objc func myAction() {
        myLabel.text = "mal sertan"
    }


}

