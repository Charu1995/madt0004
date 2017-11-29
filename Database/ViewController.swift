//
//  ViewController.swift
//  Database
//
//  Created by OWNER on 9/27/17.
//  Copyright © 2017 OWNER. All rights reserved.
//

import UIKit
import Firebase

class ViewController: UIViewController,UIImagePickerControllerDelegate,UINavigationControllerDelegate {
    
    @IBOutlet var coverImage: UIImageView!
    @IBOutlet var profileImage: UIImageView!
    
    @IBOutlet weak var myTextfield: UITextField!
    @IBOutlet weak var myPhone: UITextField!
    @IBOutlet weak var myEmail: UITextField!
    var num  = 0
   
    var ref: DatabaseReference?
    

    @IBAction func saveBtn(_ sender: Any) {
         ref = Database.database().reference()
        if myTextfield.text != " "
        {
      
        ref?.child("Name").childByAutoId().setValue(myTextfield.text)
            myTextfield.text  = " "
    }
        if myPhone.text != " "
        {
            
            ref?.child("phone").childByAutoId().setValue(myPhone.text)
            myPhone.text  = " "
        }
        if myEmail.text != " "
        {
            
            ref?.child("email").childByAutoId().setValue(myEmail.text)
            myEmail.text  = " "
        }
        
        
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
     
        
       
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func config(){
        let pickerController = UIImagePickerController()
        pickerController.delegate = self
        pickerController.allowsEditing = true
        let alertController = UIAlertController(title: "choose a picture", message: "choose from", preferredStyle: .actionSheet)
        let cameraAction = UIAlertAction(title: "camera", style: .default) {(action) in pickerController.sourceType = .camera
            self.present(pickerController, animated: true, completion: nil)
        }
        let photoLibraryAction = UIAlertAction(title: "photos library", style: .default) {(action) in pickerController.sourceType = .photoLibrary
            self.present(pickerController, animated: true, completion: nil)
        }
        let savedPhotosAction = UIAlertAction(title: "saved photos", style: .default) {(action) in pickerController.sourceType = .savedPhotosAlbum
            self.present(pickerController, animated: true, completion: nil)
        }
        alertController.addAction(cameraAction)
        alertController.addAction(photoLibraryAction)
        alertController.addAction(savedPhotosAction)
        present(alertController, animated: true, completion: nil)
        
    }
    
    @IBAction func updateCover(_ sender: Any) {
        num = 2
        config()
        
    }
    
   @IBAction func updateProfile(_ sender: Any) {
  
    num = 1
    config()
        
        
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        let updateprofimage = info[UIImagePickerControllerOriginalImage] as! UIImage
        if num == 1{
           profileImage.image = updateprofimage
        }else if(num == 2){
          coverImage.image = updateprofimage
        }
        
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
  
    
}







