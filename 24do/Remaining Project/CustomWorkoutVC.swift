//
//  CustomWorkoutVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 05/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import SQLite

class CustomWorkoutVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    let day = Expression<Int>("day")
       let ExName = Expression<String>("ExName")
       let imageName = Expression<String>("imageName")
        var database: Connection!
    
    var dayNumber = 0
    var exerciseName = [String]()
    var imageArray = [String]()
    var tableName = ""

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
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
        getData()

    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exerciseName.count
      }
      
      func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "CustomWorkout") as! CustomWorkoutCelll
        cell.exName.text = exerciseName[indexPath.row]
        cell.exImage.image = UIImage(named: imageArray[indexPath.row])
        return cell
        
      }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
     func getData() {
            print("Getting the list")
            let userTable = Table(tableName)
            do {
                let data  = try self.database.prepare(userTable)
                for d in data {
                    if d[self.day] == dayNumber  {
                    print("day :", d[self.day] , "ExerciseName", d[self.ExName], "Picture Name", d[self.imageName])
                    exerciseName.append(d[self.ExName])
                    imageArray.append(d[self.imageName])
                    }
                    else  {
                        print("Yahein tk hai..")
                    }
                }
            }
            catch {
                print(error)
            }
        print(exerciseName)
        print(imageArray)
        
    }
    
    @IBAction func startWorkout(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VideoPlayer") as! PlayVideoVC
        vc.modalPresentationStyle = .fullScreen
        vc.videoNameArray = exerciseName
        vc.videoNumber = exerciseName.count
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
    


}
