//
//  ResourcesViewController.swift
//  kwkproject21
//
//  Created by Lavanya Goel on 7/1/21.
//

import UIKit

class ResourcesViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //Testing if code works by changing color of background to purple when top button clicked -- LG
    @IBAction func callButtonOne(_ sender: UIButton) {
        self.view.backgroundColor = UIColor.purple
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
