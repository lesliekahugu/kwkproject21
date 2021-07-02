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
        entryBox.layer.borderWidth = 2.0
        entryBox.layer.cornerRadius = 8
        entryBox.layer.borderColor = UIColor.white.cgColor
        // Do any additional setup after loading the view.
    }
    @IBOutlet weak var entryBox: UITextView!
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
    @IBAction func add(_ sender: Any) {
            let cal = UIDatePicker(frame:CGRect(x:40, y:500, width:500, height:50))
            cal.tintColor = UIColor.white
            self.view.addSubview(cal)
            let label = UILabel(frame: CGRect(x: 0, y: 0, width: 220, height: 21))
             label.textColor = .white
             label.center = CGPoint(x: 150, y: 570)
             label.textAlignment = .left
             label.text = "Today I am feeling:"
            label.font = label.font.withSize(19)
             self.view.addSubview(label)
        let txtField = UITextField(frame: CGRect(x: 215, y: 555, width: 100.00, height: 30.00));
            txtField.borderStyle = UITextField.BorderStyle.roundedRect
            txtField.autocapitalizationType = UITextAutocapitalizationType.none
            txtField.placeholder = "Emoji Here"
        //txtField.font = UIFont(name: <#String#>, size: 12)
            self.view.addSubview(txtField)
        let txtView = UITextView(frame: CGRect(x:30, y:590, width:350, height: 164));
            txtView.textAlignment = .left
            txtView.backgroundColor = .clear
            txtView.layer.borderWidth = 2.0
            txtView.layer.cornerRadius = 8
            txtView.layer.borderColor = UIColor.white.cgColor
        //txtView.text = "journal entry here"
            self.view.addSubview(txtView)

        }
    
}
