//
//  FirstViewController.swift
//  Calorie
//
//  Created by Jining song on 2018/10/13.
//  Copyright © 2018 Jining song. All rights reserved.
//

import UIKit
import MBCircularProgressBar

class MainPageController: UIViewController {

    @IBOutlet weak var dailyGoal: UILabel!
    @IBOutlet weak var progressBar: MBCircularProgressBarView!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.progressBar.value = 0
        dailyGoal.text = "3100 Kcal"
        
    }
    override func viewDidAppear(_ animated: Bool) {
        
        UIView.animate(withDuration: 1.0) {
            self.progressBar.value = 600
        }
        
    }


}

