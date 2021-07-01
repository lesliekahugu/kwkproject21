//
//  JournalViewController.swift
//  kwkproject21
//
//  Created by Lavanya Goel on 7/1/21.
//

import UIKit

class JournalViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func add(_ sender: Any) {
            let cal = UIDatePicker(frame:CGRect(x:30, y:530, width:500, height:50))
            self.view.addSubview(cal)
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 200, height: 21))
             label.textColor = .black
             label.center = CGPoint(x: 170, y: 600)
             label.textAlignment = .left
             label.text = "Today I am feeling:"
             self.view.addSubview(label)
            let txtField = UITextField(frame: CGRect(x: 215, y: 585, width: 100.00, height: 30.00));
            txtField.borderStyle = UITextField.BorderStyle.roundedRect
            txtField.autocapitalizationType = UITextAutocapitalizationType.none
            txtField.placeholder = "Emoji Here"
            self.view.addSubview(txtField)
            let txtView = UITextView(frame: CGRect(x:50, y:630, width:315, height: 100));
            txtView.textAlignment = .left
            txtView.backgroundColor = UIColor.red
            txtView.text = "journal entry here"
            self.view.addSubview(txtView)
        }

}
