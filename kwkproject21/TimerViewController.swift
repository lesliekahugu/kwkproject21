//
//  TimerViewController.swift
//  kwkproject21
//
//  Created by Lavanya Goel on 7/1/21.
//

import UIKit

class TimerViewController: UIViewController {

        
    
        // Do any additional setup after loading the view.
    
    
        // Do any additional setup after loading the view.
        //class ViewController: UIViewController {
          //@IBOutlet weak var TimerLabel: UILabel!
          //@IBOutlet weak var startStopButton: UIButton!
          //@IBOutlet weak var resetButton: UIButton!
    
    
          @IBOutlet weak var TimerLabel: UILabel!
          @IBOutlet weak var startStopButton: UIButton!
          @IBOutlet weak var resetButton: UIButton!
   
          var timer:Timer = Timer ()
          var count:Int = 0
          var timerCounting:Bool = false
          override func viewDidLoad() {
            super.viewDidLoad()
            startStopButton.setTitleColor(UIColor.green, for: .normal)
          }
          func makeTimeString(hours: Int, minutes: Int, seconds : Int) -> String
          {
          var timeString = ""
            timeString += String(format: "%02d", hours)
            timeString += " : "
            timeString += String(format: "%02d", minutes)
            timeString += " : "
            timeString += String(format: "%02d", seconds)
            timeString += " : "
            return timeString
          }
            
    @IBAction func resetTapped(_ sender: Any) {
        let alert = UIAlertController(title: "Reset Timer?", message: "Are you sure you would like to reset your timer?", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: { (_)in
        //do nothing
        }))
          alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { (_)in
        self.count = 0
        self.timer.invalidate()
        self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
        self.startStopButton.setTitle("START", for: .normal)
        self.startStopButton.setTitleColor(UIColor.green, for: .normal)
          }))
          self.present(alert, animated: true, completion: nil)}
    
/*
@IBAction func resetTapped(_ sender: Any) {
          let alert = UIAlertController(title: "Reset Timer?", message: "Are you sure you would like to reset your timer?", preferredStyle: .alert)
          alert.addAction(UIAlertAction(title: "CANCEL", style: .cancel, handler: { (_)in
          //do nothing
          }))
            alert.addAction(UIAlertAction(title: "YES", style: .default, handler: { (_)in
          self.count = 0
          self.timer.invalidate()
          self.TimerLabel.text = self.makeTimeString(hours: 0, minutes: 0, seconds: 0)
          self.startStopButton.setTitle("START", for: .normal)
          self.startStopButton.setTitleColor(UIColor.green, for: .normal)
            }))
            self.present(alert, animated: true, completion: nil)}
 */
          func secondsToHoursMinutesSeconds(seconds: Int) -> (Int, Int, Int)
          {
          return ((seconds / 3600), ((seconds % 3600) / 60), ((seconds % 3600) % 60))
          }
        @objc func timerCounter() -> Void
        {
         count = count + 1
          let time = secondsToHoursMinutesSeconds(seconds: count)
          let timeString = makeTimeString(hours: time.0, minutes: time.1, seconds: time.2)
          TimerLabel.text = timeString
        }
         
    @IBAction func startStopTapped(_ sender: Any) {
        if(timerCounting)
        {
        timerCounting = false
        timer.invalidate()
          startStopButton.setTitle("START", for: .normal)
          startStopButton.setTitleColor(UIColor.green, for: .normal)
      }
      else
        {
          timerCounting = true
          startStopButton.setTitle("STOP", for: .normal)
          startStopButton.setTitleColor(UIColor.red, for: .normal)
          timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
    }
    /*
        @IBAction func startStopTapped(_ sender: Any) {
            if(timerCounting)
            {
            timerCounting = false
            timer.invalidate()
              startStopButton.setTitle("START", for: .normal)
              startStopButton.setTitleColor(UIColor.green, for: .normal)
          }
          else
            {
              timerCounting = true
              startStopButton.setTitle("STOP", for: .normal)
              startStopButton.setTitleColor(UIColor.red, for: .normal)
              timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
            }
 */
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
