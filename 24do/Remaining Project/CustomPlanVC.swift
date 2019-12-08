//
//  CustomPlanVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 26/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import SQLite

class CustomPlanVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
  
    var database: Connection!
    var tableName = ""
    let day = Expression<Int>("day")
    let ExName = Expression<String>("ExName")
    let imageName = Expression<String>("imageName")
      
    var customExName = [String]()
    let defaults = UserDefaults.standard
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let items = UserDefaults.standard.array(forKey: "CustomExerciseName") as? [String] {
            customExName = items
        }
        
        }
    
    @IBAction func AddCustomPlan(_ sender: UIBarButtonItem) {
        var customText = UITextField()
        let promt = UIAlertController(title: "Add Custom Plan", message: "Work Hard!", preferredStyle: .alert)
        let done = UIAlertAction(title: "Add Plan", style: .default) { (alertAction) in
            print(customText.text!)
            self.customExName.append(customText.text!)
            self.defaults.set(self.customExName, forKey: "CustomExerciseName")
            
            self.tableView.reloadData()
            print("hello")
        }
        promt.addTextField { (textField) in
            textField.placeholder = "Add Category Name"
            customText = textField
        }
        promt.addAction(done)
        present(promt, animated: true, completion: nil)
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return customExName.count
    }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "CustomExCell", for: indexPath) as! CustomExerciseCell
        cell.CustomExLabel.text = customExName[indexPath.row]
        cell.editButton.tag = indexPath.row
        cell.editButton.addTarget(self, action: #selector(editButtonTapped(_:)), for: .touchUpInside )
        
        return cell
       
        
      }
    func tableView(_ tableView: UITableView, trailingSwipeActionsConfigurationForRowAt indexPath: IndexPath) -> UISwipeActionsConfiguration? {
        let delete = DeleteAction (at: indexPath)
        return UISwipeActionsConfiguration(actions: [delete])
    }
    func DeleteAction (at indexPath: IndexPath ) ->UIContextualAction {
        self.tableName = customExName[indexPath.row]
        let action = UIContextualAction(style: .destructive, title: "Delete") { (action, view, completion) in
            
            self.customExName.remove(at: indexPath.row)
            self.tableView.deleteRows(at: [indexPath], with: .automatic)
            self.defaults.set(self.customExName, forKey: "CustomExerciseName")
            self.defaults.synchronize()
            
            
            print(self.customExName)
        }
        
        action.image = UIImage(named: "delete_ic")
        action.backgroundColor = .red
        return action
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let customEx = customExName[indexPath.row]
      //  let index = indexPath.row + 1
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ExerciseDayNumber") as! ExerciseDayNumber
      //  vc.dayNumber = index
        vc.tableName = customEx
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
         print(indexPath.row + 1)
        print(customEx)
    }
    @objc func editButtonTapped(_ sender: UIButton)  {
        let customLabel = customExName[sender.tag]
        print(customLabel)
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "DaysVC") as! DaysVC
        vc.customName = customLabel
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
  
    func insertData() {
        let userTable = Table("Hello")
            
                        //  print(names)
                   
                   let insert = userTable.insert( self.day <- 1, self.ExName <- "names", self.imageName <- "TY1")
                
                      do {
                               try self.database.run(insert)
                               print("Inserted in table")
                           }
                           catch {
                               print(error)
                           }
                  
                      
        
    }
    func fetchData(){
         print("Getting the list")
                
               
                       do {
                        let userTable = Table(tableName)
                        print(userTable)
                           let data = try self.database.prepare(userTable)
                          for user in data {
                            print(user[self.day], user[self.ExName], user[self.imageName])
                               
                           }
                       }
                       catch {
                         print(error)
                     }

            }
    
    
        
    }



  


