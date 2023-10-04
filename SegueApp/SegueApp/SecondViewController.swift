//
//  SecondViewController.swift
//  SegueApp
//
//  Created by Selçuk İleri on 3.10.2023.
//

import UIKit

class SecondViewController: UIViewController {
    @IBOutlet weak var myLabelSecond: UILabel!
    @IBOutlet weak var nameLabel: UILabel!
    var myName = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        nameLabel.text = myName

    }
    


}
