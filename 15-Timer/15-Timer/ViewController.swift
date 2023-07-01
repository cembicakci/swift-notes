//
//  ViewController.swift
//  15-Timer
//
//  Created by Cem Bıçakcı on 1.07.2023.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var timer = Timer()
    var counter = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        counter = 10
        timerLabel.text = "Time: \(counter)"
        
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(TimerFunc), userInfo: nil, repeats: true)
        
    }
    
    @objc func TimerFunc(){
        timerLabel.text = "Time: \(counter)"
        counter -= 1
        
        if(counter == 0){
            //timer ı durdurdur.
            timer.invalidate()
            timerLabel.text = "Time is over"
        }
    }

    @IBAction func button(_ sender: Any) {
        print("Button Clicked")
    }
    
}

