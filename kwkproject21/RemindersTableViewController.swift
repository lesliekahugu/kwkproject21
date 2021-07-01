//
//  RemindersTableViewController.swift
//  kwkproject21
//
//  Created by Lavanya Goel on 7/1/21.
//
import UserNotifications
import UIKit

class RemindersTableViewController: UITableViewController{

    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.delegate = self
        table.dataSource = self

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 0
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return 0
    }

    //
    //  RemindersViewController.swift
    //  kwkproject21
    //
    //  Created by Lavanya Goel on 7/1/21.
    //


        
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            
        }
        

        @IBOutlet weak var table: UITableView!
        
        struct MyReminder {
            let title: String
            let date: Date
            let identifier: String
        }
        
        var models = [MyReminder]()


        @IBAction func didTapAdd() {
            // show add vc
            guard let vc = storyboard?.instantiateViewController(identifier: "add") as? AddViewController else {
                return
            }

            vc.title = "New Reminder"
            vc.navigationItem.largeTitleDisplayMode = .never
            vc.completion = { title, body, date in
                DispatchQueue.main.async {
                    self.navigationController?.popToRootViewController(animated: true)
                    let new = MyReminder(title: title, date: date, identifier: "id_\(title)")
                    self.models.append(new)
                    self.table.reloadData()

                    let content = UNMutableNotificationContent()
                    content.title = title
                    content.sound = .default
                    content.body = body

                    let targetDate = date
                    let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second],
                                                                                                              from: targetDate),
                                                                repeats: false)

                    let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
                    UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
                        if error != nil {
                            print("something went wrong")
                        }
                    })
                }
            }
            navigationController?.pushViewController(vc, animated: true)

        }

        @IBAction func didTapTest(_ sender: Any) {
            // fire test notification
            UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .badge, .sound], completionHandler: { success, error in
                if success {
                    // schedule test
                    self.scheduleTest()
                }
                else if error != nil {
                    print("error occurred")
                }
            })
        }

        func scheduleTest() {
            let content = UNMutableNotificationContent()
            content.title = "Hello World"
            content.sound = .default
            content.body = "My long body. My long body. My long body. My long body. My long body. My long body. "

            let targetDate = Date().addingTimeInterval(10)
            let trigger = UNCalendarNotificationTrigger(dateMatching: Calendar.current.dateComponents([.year, .month, .day, .hour, .minute, .second],
                                                                                                      from: targetDate),
                                                        repeats: false)

            let request = UNNotificationRequest(identifier: "some_long_id", content: content, trigger: trigger)
            UNUserNotificationCenter.current().add(request, withCompletionHandler: { error in
                if error != nil {
                    print("something went wrong")
                }
            })
        }

    }

    extension ViewController: UITableViewDelegate {

        func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
            tableView.deselectRow(at: indexPath, animated: true)
        }

    }


    extension ViewController: UITableViewDataSource {

        func numberOfSections(in tableView: UITableView) -> Int {
            return 1
        }

        func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
            return models.count
        }

        func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
            cell.textLabel?.text = models[indexPath.row].title
            let date = models[indexPath.row].date

            let formatter = DateFormatter()
            formatter.dateFormat = "MMM, dd, YYYY"
            cell.detailTextLabel?.text = formatter.string(from: date)

            cell.textLabel?.font = UIFont(name: "Arial", size: 25)
            cell.detailTextLabel?.font = UIFont(name: "Arial", size: 22)
            return cell
        }



         // Do any additional setup after loading the view.
        
        

        /*
        // MARK: - Navigation

        // In a storyboard-based application, you will often want to do a little preparation before navigation
        override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
            // Get the new view controller using segue.destination.
            // Pass the selected object to the new view controller.
        }
        */



    
    
    /*
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...

        return cell
    }
    */

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
