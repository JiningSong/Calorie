//
//  SecondViewController.swift
//  Calorie
//
//  Created by Jining song on 2018/10/13.
//  Copyright © 2018 Jining song. All rights reserved.
//

import UIKit
import MaterialComponents.MaterialButtons_ButtonThemer

class AddPhotoController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    @IBOutlet weak var imageView: UIImageView!
    let imagePicker = UIImagePickerController()
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
        let userPickedImage = info[UIImagePickerController.InfoKey.originalImage]
        imagePicker.dismiss(animated: true, completion: nil)
        imageView.image = userPickedImage as? UIImage
        //imageView.image = nil
//        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: self.view.frame.width, height: self.view.frame.height))
//        imageView.image = userPickedImage as? UIImage
//        imageView.contentMode = .scaleToFill
//        self.view.addSubview(imageView)
        
        
    }
    
    @IBAction func cameraTapped(_ sender: UIBarButtonItem) {
        present(imagePicker, animated: true, completion: nil)
    }
    @IBAction func analyzePhotoTapped(_ sender: UIBarButtonItem) {
        
    }
    
    
}


