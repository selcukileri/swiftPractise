//
//  ViewController.swift
//  TimerProject
//
//  Created by Selçuk İleri on 4.10.2023.
//

import UIKit
class ViewController: UIViewController {
    
    @IBOutlet weak var timeLabel: UILabel!
    
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        counter = 10
        timeLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerFunction), userInfo: nil, repeats: true)
        
    }
    
    @objc func timerFunction(){
        timeLabel.text = "Time: \(counter)"
        counter -= 1
        if counter < 0 {
            timer.invalidate()
            timeLabel.text = "Time's is over"
        }
    }


    @IBAction func buttonClicked(_ sender: Any) {
        
    }
}

