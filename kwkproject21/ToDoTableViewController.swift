//
//  ToDoTableViewController.swift
//  kwkproject21
//
//  Created by Lavanya Goel on 7/2/21.
//

import UIKit

class ToDoTableViewController: UITableViewController {

    var toDos : [ToDoCD] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    
    func getToDos() {
        if let context = (UIApplication.shared.delegate as? AppDelegate)?.persistentContainer.viewContext {
            if let coreDataToDos = try? context.fetch(ToDoCD.fetchRequest()) as? [ToDoCD] {
                
                    toDos = coreDataToDos
                    tableView.reloadData()
                
                }

          }
    }
    
    override func viewWillAppear(_ animated: Bool) {
      getToDos()
    }
    

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return toDos.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)

        // Configure the cell...
        let toDo = toDos[indexPath.row]

        
        cell.textLabel?.text = "Name: \(toDo.name), Category: \(toDo.category), Date: \(toDo.date)."


        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {

      // this gives us a single ToDo
      let toDo = toDos[indexPath.row]

      performSegue(withIdentifier: "moveToComplete", sender: toDo)
    }
    
    
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if let addVC = segue.destination as? AddToDoViewController {
            addVC.previousVC = self
        }
        
        if let completeVC = segue.destination as? CompleteToDoViewController {
            if let toDo = sender as? ToDoCD {
              completeVC.selectedToDo = toDo
              completeVC.previousVC = self
            }
          }
        
    }
    

}
