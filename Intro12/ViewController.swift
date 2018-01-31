//
//  ViewController.swift
//  Intro12
//
//  Created by SwiftiCode on 29/7/16.
//  Copyright © 2016 SwiftiCode. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    // MARK: Properties  
    @IBOutlet weak var myImageView: UIImageView!

    
    // MARK: Default Template
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingImage image: UIImage, editingInfo: [String : AnyObject]?) {
        
        myImageView.image = image
        
        dismiss(animated: true, completion: nil)
    }

    // MARK: Action
    @IBAction func choosePicture(_ sender: UITapGestureRecognizer) {
        
        let myImagePickerController = UIImagePickerController()
        
        myImagePickerController.sourceType = .photoLibrary
        myImagePickerController.delegate = self
        
        present(myImagePickerController, animated: true, completion: nil)
        
    }
    

}

