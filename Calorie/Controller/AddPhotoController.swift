//
//  SecondViewController.swift
//  Calorie
//
//  Created by Jining song on 2018/10/13.
//  Copyright © 2018 Jining song. All rights reserved.
//
import Foundation
import UIKit
import MaterialComponents.MaterialButtons_ButtonThemer
import Alamofire
import ProgressHUD

class AddPhotoController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()
    var imageData: NSData! = nil
    //let buttonScheme = MDCButtonScheme()
    //let button = MDCButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imagePicker.delegate = self
        imagePicker.allowsEditing = false
        imagePicker.sourceType = .camera
       // MDCContainedButtonThemer.applyScheme(buttonScheme, to: button)
        //MDCTextButtonThemer.applyScheme(buttonScheme, to: cameraButton as! MDCButton)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        
        let image = info[UIImagePickerController.InfoKey.originalImage] as! UIImage
        imageData = image.jpegData(compressionQuality: 0.75) as NSData!
    
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = image as UIImage
    
    }
    

    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
     
        present(imagePicker, animated: true, completion: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?)
    {
        // Determine what the segue destination is
        if segue.destination is FoodCountsController
        {
            let vc = segue.destination as? FoodCountsController
            vc?.imageData = imageData
        }
    }
    
    
//    @IBAction func analyzePhotoTapped(_ sender: UIBarButtonItem) {
//        let imageString = imageData.base64EncodedString(options: Data.Base64EncodingOptions.lineLength64Characters)
//        let parameters : [String: String] = [
//            "picture" : imageString
//        ]
//        //
//        Alamofire.request(URL, method: .post, parameters: parameters).responseString{ (response) in
//            print(response)
//        }
//    }
}

