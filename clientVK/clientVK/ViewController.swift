//
//  ViewController.swift
//  Weather1
//
//  Created by paul kudryavtsev on 16.03.2020.
//  Copyright © 2020 paul kudryavtsev. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    
    @IBOutlet weak var loginInput: UITextField!
    
    
    @IBOutlet weak var passwordInput: UITextField!
    
    
    @IBOutlet weak var scrollView: UIScrollView!
    
    
    override func viewDidLoad() {

        super.viewDidLoad()
        
        let hideKeyboardGesture = UITapGestureRecognizer(target: self, action: #selector(hideKeyboard))
        
        self.scrollView?.addGestureRecognizer(hideKeyboardGesture)
    }

    @objc func hideKeyboard() {

            self.scrollView?.endEditing(true)
    }

    
//    @IBAction func loginButtonPressed(_ sender: Any) {
//        
//        let login = loginInput.text!
//
//        let password = passwordInput.text!
//
//         if login == "admin" && password == "123456" {
//             print("успешная авторизация")
//         } else {
//             print("неуспешная авторизация")
//         }
//        
//    }
    
    
    @IBAction func loginButtonPressed(_ sender: Any) {
    
         let login = loginInput.text!
    
            let password = passwordInput.text!
    
             if login == "kudrpavel" && password == "123456" {
                 print("успешная авторизация")
             } else {
                 print("неуспешная авторизация")
             }
    }
    
    
    @IBAction func CanselledButtonPressed(_ sender: Any) {
        
        print("отмена входа")
    }
    
    
    
    
    
    
    
    @objc func keyboardWasShown(notification: Notification) {

        let info = notification.userInfo! as NSDictionary

        let kbSize = (info.value(forKey: UIResponder.keyboardFrameEndUserInfoKey) as! NSValue).cgRectValue.size

        let contentInsets = UIEdgeInsets(top: 0.0, left: 0.0, bottom: kbSize.height, right: 0.0)

        self.scrollView?.contentInset = contentInsets

        scrollView?.scrollIndicatorInsets = contentInsets
    }

    @objc func keyboardWillBeHidden(notification: Notification) {
        let contentInsets = UIEdgeInsets.zero
        scrollView?.contentInset = contentInsets
    }
    
    
    
    

    
    override func viewWillAppear(_ animated: Bool) {
        
        super.viewWillAppear(animated)

        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWasShown), name: UIResponder.keyboardWillShowNotification, object: nil)

        NotificationCenter.default.addObserver(self, selector: #selector(self.keyboardWillBeHidden(notification:)), name: UIResponder.keyboardWillHideNotification, object: nil)
    }
    
    override func viewWillDisappear(_ animated: Bool) {

        super.viewWillDisappear(animated)

        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillShowNotification, object: nil)
        NotificationCenter.default.removeObserver(self, name: UIResponder.keyboardWillHideNotification, object: nil)

    }
    
    
}


