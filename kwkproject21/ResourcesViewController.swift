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
        if let url = URL(string: "https://www.google.com"){
                    UIApplication.shared.open(url)
                }
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
