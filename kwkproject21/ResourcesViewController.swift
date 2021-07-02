//
//  ResourcesViewController.swift
//  kwkproject21
//
//  Created by Lavanya Goel on 7/1/21.
//

import UIKit

class ResourcesViewController: UIViewController {

    
    
    //Testing if code works by changing color of background to purple when top button clicked -- LG
    /*@IBAction func callButtonOne(_ sender: UIButton) {
        
    }*/
    override func  viewDidLoad() {
      super.viewDidLoad()
     
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        if let url = URL(string: "https://suicidepreventionlifeline.org/"){
                    UIApplication.shared.open(url)
                }
    }
     @IBAction func bTwo(_ sender: UIButton) {
         if let url = URL(string: " https://www.crisistextline.org/"){
            UIApplication.shared.open(url)
         }
     }
     @IBAction func bThree(_ sender: UIButton) {
         if let url = URL(string: "https://screening.mhanational.org/screening-tools/"){
                     UIApplication.shared.open(url)
         }
     }
     @IBAction func bFour(_ sender: UIButton) {
         if let url = URL(string: "https://www.massgeneral.org/psychiatry/guide-to-mental-health-resources/for-bipoc-mental-health"){
                     UIApplication.shared.open(url)
         }
     }
     @IBAction func bFive(_ sender: UIButton) {
         if let url = URL(string: "https://mhanational.org/childrens-mental-health"){
                     UIApplication.shared.open(url)
         }
     }
     @IBAction func bSix(_ sender: UIButton) {
         if let url = URL(string: "https://ok2talk.org/"){
                     UIApplication.shared.open(url)
         }
     }
     @IBAction func bSeven(_ sender: UIButton) {
         if let url = URL(string: "https://teenlineonline.org/talk-now/"){
                     UIApplication.shared.open(url)
         }
     }
     @IBAction func bEight(_ sender: UIButton) {
         if let url = URL(string: "https://www.thetrevorproject.org/get-help-now/"){
                     UIApplication.shared.open(url)
         }
     }
     
    
     
}
/*
    @IBAction func screeningButton(_ sender: UIButton) {
if let url = URL(string: "https://www.apple.com") {
      UIApplication.shared.open(url, options: [:], completionHandler: nil)
    */
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */


    


