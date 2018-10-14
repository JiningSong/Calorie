//
//  FirstViewController.swift
//  Calorie
//
//  Created by Jining song on 2018/10/13.
//  Copyright © 2018 Jining song. All rights reserved.
//

import UIKit
import Alamofire

class FoodCountsController: UIViewController {
    
    var imageData:NSData! = nil
    var URL = "http://10.10.4.240/ios"

    override func viewDidLoad() {
        super.viewDidLoad()
        let imageString = imageData.base64EncodedString(options: Data.Base64EncodingOptions.lineLength64Characters)
        let parameters : [String: String] = [
            "picture" : imageString
        ]
        
        Alamofire.request(URL, method: .post, parameters: parameters).responseString{ (response) in
            print(response)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Determine what the segue destination is
        if segue.destination is MainPageController
        {
            let vc = segue.destination as? MainPageController
            vc?.value += 1000
        }
    }

}



