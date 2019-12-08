//
//  MealPlanVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 23/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import Foundation

class MealPlanVC: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
 
    var data = 0

    @IBOutlet weak var collectionView: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        collectionView.delegate = self
        collectionView.dataSource = self
        self.title = "Meal Plan"
        // Do any additional setup after loading the view.
        let itemSize = UIScreen.main.bounds.width/3 - 3
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 0, bottom: 10, right: 0)
        layout.itemSize = CGSize(width: itemSize, height: itemSize)
        layout.minimumLineSpacing = 3
        layout.minimumInteritemSpacing = 3
        collectionView.collectionViewLayout = layout
    }
    var days = ["DAY1","DAY2","DAY3","DAY4","DAY5","DAY6","DAY7","DAY8","DAY9","DAY10","DAY11","DAY12","DAY13","DAY14","DAY15","DAY16","DAY17","DAY18","DAY19","DAY20","DAY21","DAY22","DAY23","DAY24","DAY25","DAY26","DAY27","DAY28"]
    
   
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return days.count
     }
     
     func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "DietPlanCell", for: indexPath) as! DietPlanCell
       print(days[indexPath.row])
        
        cell.daysLabel.text = days[indexPath.row]
        print("chutiyaap")
        return cell
     }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
              let vc = storyboard.instantiateViewController(withIdentifier: "DietOfTheDay") as! DietOfThe_Day
                  vc.modalPresentationStyle = .fullScreen
                    
                  
        
        if indexPath.row == 0 {
            data = 1
        }
        else if indexPath.row == 1 {
            data = 2
        }
        else if indexPath.row == 2 {
            data = 3
        }
        else if indexPath.row == 3 {
                   data = 4
               }
        else if indexPath.row == 4 {
                   data = 5
               }
        else if indexPath.row == 5 {
                   data = 6
               }
        else if indexPath.row == 6 {
                   data = 7
               }
        else if indexPath.row == 7 {
                   data = 8
               }
        else if indexPath.row == 8 {
                          data = 9
                      }
        else if indexPath.row == 9 {
                   data = 10
               }
        else if indexPath.row == 10 {
                   data = 11
               }
        else if indexPath.row == 11 {
                   data = 12
               }
        else if indexPath.row == 12 {
                   data = 13
               }
        else if indexPath.row == 13 {
                   data = 14
               }
        else if indexPath.row == 14 {
                   data = 15
               }
        else if indexPath.row == 15 {
                   data = 16
               }
        else if indexPath.row == 16 {
                   data = 17
               }
        else if indexPath.row == 17 {
                   data = 18
               }
        else if indexPath.row == 18 {
                   data = 19
               }
        else if indexPath.row == 19 {
                   data = 20
               }
        else if indexPath.row == 20 {
                   data = 21
               }
        else if indexPath.row == 21 {
                   data = 22
               }
        else if indexPath.row == 22 {
                   data = 23
               }
        else if indexPath.row == 23 {
                   data = 24
               }
        else if indexPath.row == 24 {
                   data = 25
               }
        else if indexPath.row == 25 {
                   data = 26
               }
        else if indexPath.row == 26 {
                   data = 27
               }
        else if indexPath.row == 27 {
                   data = 28
               }
        
        print(data)
        vc.getData = data
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
   
 
 
    


}
