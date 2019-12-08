//
//  ExerciseDayNumber.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 06/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class ExerciseDayNumber: UIViewController, UITableViewDelegate, UITableViewDataSource{
 
    
    var tableName = ""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print(tableName)
    }
    let days = ["DAY 1","DAY 2","DAY 3","DAY 4","DAY 5","DAY 6","DAY 7","DAY 8","DAY 9","DAY 10","DAY 11","DAY 12","DAY 13","DAY 14","DAY 15","DAY 16","DAY 17","DAY 18","DAY 19","DAY 20","DAY 21","DAY 22","DAY 23","DAY 24","DAY 25","DAY 26","DAY 27","DAY 28"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "daysCell")
        cell?.textLabel?.text = days[indexPath.row]
        return cell!
     }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "CustomWorkoutVC") as! CustomWorkoutVC
        vc.dayNumber = indexPath.row + 1
        vc.tableName = self.tableName
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
        
        
    }
    
    


}
