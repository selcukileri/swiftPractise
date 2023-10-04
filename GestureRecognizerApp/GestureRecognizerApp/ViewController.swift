//
//  ViewController.swift
//  GestureRecognizerApp
//
//  Created by Selçuk İleri on 4.10.2023.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var myLabel: UILabel!
    var isPic = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        imageView.isUserInteractionEnabled = true
        let gestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(changePic))
        imageView.addGestureRecognizer(gestureRecognizer)
        
    }
    @objc func changePic() {
        if isPic == true {
            imageView.image  = UIImage(named: "asd2")
            myLabel.text = "2nd Pic"
            isPic = false
        } else {
            imageView.image = UIImage(named: "asd")
            myLabel.text = "1st Pic"
            isPic = true
        }
        
    }


}

