//
//  Setting VC.swift
//  24do
//
//  Created by Ahmer Hassan on 07/12/2019.
//  Copyright © 2019 Victor Kenzo Nawa. All rights reserved.
//

import UIKit
import MessageUI


class Setting_VC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func labgDropDown(_ sender: Any) {
        print("button pressed")
    }
    
    @IBAction func privatePolicy(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "webbViewVC") as! WebViewVC
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    @IBAction func RateUs(_ sender: Any) {
        print("apple account required")
    }
    @IBAction func feedBackEmail(_ sender: Any) {
        var customText = UITextField()
               let promt = UIAlertController(title: "Write Your Feedback", message: "Work Hard!", preferredStyle: .alert)
               let done = UIAlertAction(title: "ASend Feedback", style: .default) { (alertAction) in
                   print(customText.text!)
                guard  MFMailComposeViewController.canSendMail() else {return
                }
//                let composer = MFMailComposeViewController()
//                composer.mailComposerDelegate = self
//                composer.setToRecipients("iamahmerr@gmail.com")
//                composer.setSubject("Feedback")
//                composer.setMessageBody(customText, isHTML: false)
//                present(composer, animated: true)
//                
                   print("hello")
               }
               promt.addTextField { (textField) in
                   textField.placeholder = "Write Feedback Here"
                   customText = textField
               }
               promt.addAction(done)
               present(promt, animated: true, completion: nil)
    }
    

}
extension Setting_VC: MFMailComposeViewControllerDelegate {
    func mailComposeController(_ controller: MFMailComposeViewController, didFinishWith result: MFMailComposeResult, error: Error?) {
        if let _ = error {
            controller.dismiss(animated: true, completion: nil)
            
        }
        switch result {
        case .cancelled:
            print("Cancelled Email")
        case .failed:
            print("Failed Email")
        case .saved:
            print("Email saved to drafts")
        case .sent:
            print("Email Sent")
        default:
            print("Email mere lun se")
        }
        controller.dismiss(animated: true, completion: nil)
    }
}
