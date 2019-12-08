//
//  AllExercisesVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 04/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import SQLite

class AllExercisesVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var dayNumber = 0
    var tableName = ""
    // yeah peechy se arhi hai array
    var exerciseLabel = [String]()
    var exerciseImage = [String]()
    // yeah jo database main jani hai..
    var selectedImage = [String]()
    var selectedLabel = [String]()
    // sqlite work
    let day = Expression<Int>("day")
    let ExName = Expression<String>("ExName")
    let imageName = Expression<String>("imageName")
    // is main retreive data store karna hai..
    var sqName = [String]()
    var sqImages = [String]()
    var sqDay = [Int]()
     var database: Connection!

    override func viewDidLoad() {
        super.viewDidLoad()
      //  print(dayNumber)
      //  print(tableName)
        //getData()
        do {
        let location = try FileManager.default.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true)
            let fileURL = location.appendingPathComponent("CustomPlans").appendingPathExtension("sqlite3")
            let database = try Connection(fileURL.path)
            self.database = database
           // print(location)
        }
        catch {
            print(error)
        }
        CreateDatabase()
        getData()
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseLabel.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ExerciseCell", for: indexPath) as! AllExercisesCell
        cell.exerciseNameLabel.text = exerciseLabel[indexPath.row]
        cell.exerciseImage.image = UIImage(named: exerciseImage[indexPath.row])
        
        
        return cell
       }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath) as! AllExercisesCell
        tableView.deselectRow(at: indexPath, animated: true)
        
        if tableView.cellForRow(at: indexPath)?.accessoryType == .checkmark {
            tableView.cellForRow(at: indexPath)?.accessoryType = .none
            selectedLabel = selectedLabel.filter({return $0 != cell.exerciseNameLabel.text})
            print(selectedLabel)
        }
        else {
            tableView.cellForRow(at: indexPath)?.accessoryType = .checkmark
            
            print(cell.exerciseNameLabel?.text! as Any)
            print(cell.exerciseImage.image!)
            selectedLabel.append(cell.exerciseNameLabel.text!)
            selectedImage.append(exerciseImage[indexPath.row])
        }
    }
    func CreateDatabase() {
        let userTable = Table(tableName)
        let createTable = userTable.create { (table) in
            table.column(self.day)
            table.column(self.ExName)
            table.column(self.imageName)
        }
        do {
            try self.database.run(createTable)
            print("Table ban gya hai..")
        }
        catch {
            print(error)
        }
    }

    @IBAction func addToDB(_ sender: Any) {
     //   print(selectedLabel)
     //   print(selectedImage)
        var n = 0
     
       
        let userTable = Table(tableName)
             for names in selectedLabel {
                   print(names)
                    print(selectedImage[n])

            let insert = userTable.insert( self.day <- self.dayNumber, self.ExName <- names, self.imageName <- exerciseImage[n])
                            n += 1
        
               do {
                        try self.database.run(insert)
                        print("Inserted in table", dayNumber, ":", names , ":", exerciseImage[n])
                    }
                    catch {
                        print(error)
                    }
        
           
               }
       
    }
    func getData() {
        print("Getting the list")
        let userTable = Table(tableName)
        do {
            let data  = try self.database.prepare(userTable)
            for d in data {
                print("day :", d[self.day] , "ExerciseName", d[self.ExName], "Picture Name", d[self.imageName])
            }
        }
        catch {
            print(error)
        }
    
}

}
