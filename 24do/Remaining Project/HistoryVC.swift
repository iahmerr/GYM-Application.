//
//  HistoryVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 02/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class HistoryVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
    //historyCell
   var history = [String]()
    var defaults = UserDefaults.standard
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        history = defaults.array(forKey: "FullHistory") as? [String] ?? ["no data"]
         
        print(history)
        
        // Do any additional setup after loading the view.
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return history.count
       }
       
       func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "historyCell", for: indexPath)
        cell.textLabel?.text = history[indexPath.row]
        return cell
       }
       



}
