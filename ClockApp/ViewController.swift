//
//  ViewController.swift
//  ClockApp
//
//  Created by ITHS on 2022-11-24.
//  Copyright © 2022 ITHS. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
      @IBOutlet weak var timeLabel: UILabel!
    
    let formatter = DateFormatter()
    
    var timer: Timer?

    override func viewDidLoad() {
        super.viewDidLoad()
    
        updateTimeLabel()
        
        formatter.timeStyle = .medium

        timer = Timer.scheduledTimer(withTimeInterval: 0.5, repeats: true, block: updateTimeLabel(timer:))
    
    }

        func updateTimeLabel(timer: Timer? = nil) {
    let date = Date()
    let dateString = formatter.string(from: date)
        
                
       timeLabel.text = dateString
        
        
    }
    
    deinit {
        timer?.invalidate()
        <#statements#>
    }
    
    
    
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


// Gör en Chackklocka
