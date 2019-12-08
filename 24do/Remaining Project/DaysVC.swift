//
//  DaysVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 04/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class DaysVC: UIViewController, UITableViewDataSource, UITableViewDelegate {
 
    
    var customName = ""
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        print("we got", customName)

        // Do any additional setup after loading the view.
    }
    let days = ["DAY 1","DAY 2","DAY 3","DAY 4","DAY 5","DAY 6","DAY 7","DAY 8","DAY 9","DAY 10","DAY 11","DAY 12","DAY 13","DAY 14","DAY 15","DAY 16","DAY 17","DAY 18","DAY 19","DAY 20","DAY 21","DAY 22","DAY 23","DAY 24","DAY 25","DAY 26","DAY 27","DAY 28"]
    //
    let exerciseNames = ["Back Lat Pulldown","Bent Over Row","Cabel Incline Pushdown","Chin-ups","inverted rows","Lat Pulldown","Machine Reverse Fly","Machine T-Bar Rows","One Arm Dumbbell Rows","Pull ups", "Seated Cable Rows", "Straight-Arm Lat Pull Down", "Superman", "V-Bar Lat PullDown", "Barbell PullOver" , "Bench Press", "Cabel CrossOver Flys", "Close Grip Bench Press ", "Decline Dumbbell Bench Press ", "Decline Press ", "Dumbbell Flys ", "Dumbbell Press ", "Dumbbell Pullovers ", "Incline Dumbbell Flys ", "Incline Dumbbell Press ", "Incline Press ", "One Arm Pushup ", "Parallel Bar Dips ", "Pec Deck Flys ", "Pec Deck Flys", "Push-Ups ","Bridge(Left) ", "Bridge(Right) ", "Downward Facing Dog " , "Seated Side Bend(Left) " , "Seated Side Bend(Right) " , "Tree(Left) ", "Tree(Right) " , "Warrior I " ,"Warrior II(Left) ", "Warrior II(Right) ", "Childs Pose ", "Mountain Pose ", "Plank ","Easy Pose ", "Locust Pose Variation ", "Side Angle(Left) ", "Side Angle(Right) ","Standig Forward Fold ", "Tree(Left) ", "Tree(Right) ", "Wind-Relieving Pose Variation(Left) ", "Wind-Relieving Pose Variation(Right) ", "Yoga Squat ", "Prayer Pose ","Cat Camel", "Cobra ", "Downward Facing Dog ","Easy Pose ","Neck Stretch ","Shoulder Expansion ", "Warrior I ","Warrior II(Left) ", "Warrior II(Right) ", "Childs Pose ", "Forearm Plank " ,"Accomplished Pose With Eagle Arms(Left) ", "Accomplished Pose With Eagle Arms(Right) ", "Boat ", "Bound Side Angle(Left) ", "Bound Side Angle(Right) ","Cobra ", "Seated Spinal Twist(Left) ", "Seated Spinal Twist(Right) ", "Shoulder Expansion ", "Twisted Chair(Left) ", "Twisted Chair(Right) ","Big Toes Pose Variation ", "Bound Side Angle(Left) " , "Bound Side Angle(Right) " , "Downward Facing Dog ", "Easy Pose ", "Happy Baby ", "High Prayer Variation ", "Low Lunges(Left) ", "Low Lunges(Right) ", "Shoulder Expansion ", "Single Leg Downward Dog(Left) ", "Single Leg Downward Dog(Right) ", "Standing Side Bend ", "Plank ","Big Toes Pose Variation ", "Easy Pose ", "Happy Baby ", "High Prayer Variation ", "Neck Stretch ", "Tree(Left) ", "Tree(Right) ", "Warrior III(Left) ", "Warrior III(Right) ", "Wind-Relieving Pose Variation(Left) ", "Wind-Relieving Pose Variation(Right) ", "Mountain Pose ", "Prayer Pose "]
    let exerciseImage = ["TVV1","TVV2","TVV3","TVV4","TVV5","TVV6","TVV7","TVV8","TVV9","TVV10","TVV11","TVV12","TVV13","TVV14","GC1","GC2","GC3","GC4","GC5","GC6","GC7","GC8","GC9","GC10","GC11","GC12","GC13","GC1","GC15","GC16","GC17","BY1","BY2","BY3","BY4","BY5","BY6","BY7","BY8","BY9","BY10","BY11","BY12","BY13","DY1","DY2","DY3","DY4","DY5","DY6","DY7","DY8","DY9","DY10","DY11","MY1","MY2","MY3","MY4","MY5","MY6","MY7","MY8","MY9","MY10","MY11","CY1","CY2","CY3","CY4","CY5","CY6","CY7","CY8","CY9","CY10","CY11","SS1","SS2","SS3","SS4","SS5","SS6","SS7","SS8","SS9","SS10","SS11","SS12","SS13","SS14","YB1","YB2","YB3","YB4","YB5","YB6","YB7","YB8","YB9","YB10","YB11","YB12","YB13"]
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return days.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Days")
        cell?.textLabel?.text = days[indexPath.row]
        return cell!
     }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "ExerciseList") as! AllExercisesVC
        if indexPath.row == 0 {
            vc.dayNumber = 1
        }
        if indexPath.row == 0 {
                   vc.dayNumber = 1
               }
        else if indexPath.row == 1 {
                vc.dayNumber = 2
                         }
        else if indexPath.row == 2 {
                vc.dayNumber = 3
               }
        else if indexPath.row == 3 {
                    vc.dayNumber = 4
                    }
        else if indexPath.row == 4 {
                         vc.dayNumber = 5
                     }
        else if indexPath.row == 5 {
                         vc.dayNumber = 6
                     }
        else if indexPath.row == 6 {
                         vc.dayNumber = 7
                     }
        else if indexPath.row == 7 {
                         vc.dayNumber = 8
                     }
        else if indexPath.row == 8 {
                         vc.dayNumber = 9
                     }
        else if indexPath.row == 9 {
                         vc.dayNumber = 10
                     }
        else if indexPath.row == 10 {
                         vc.dayNumber = 11
                     }
        else if indexPath.row == 11 {
                         vc.dayNumber = 12
                     }
        else if indexPath.row == 12 {
                         vc.dayNumber = 13
                     }
        else if indexPath.row == 13 {
                         vc.dayNumber = 14
                     }
        else if indexPath.row == 14 {
                         vc.dayNumber = 15
                     }
        else if indexPath.row == 15 {
                         vc.dayNumber = 16
                     }
        else if indexPath.row == 16 {
                         vc.dayNumber = 17
                     }
        else if indexPath.row == 17 {
                         vc.dayNumber = 18
                     }
        else if indexPath.row == 18 {
                         vc.dayNumber = 19
                     }
        else if indexPath.row == 19 {
                         vc.dayNumber = 20
                     }
        else if indexPath.row == 20 {
                         vc.dayNumber = 21
                     }
        else if indexPath.row == 21 {
                         vc.dayNumber = 22
                     }
        else if indexPath.row == 22 {
                         vc.dayNumber = 23
                     }
        else if indexPath.row == 23 {
                         vc.dayNumber = 24
                     }
        else if indexPath.row == 24 {
                         vc.dayNumber = 25
                     }
        else if indexPath.row == 25 {
                         vc.dayNumber = 26
                     }
        else if indexPath.row == 26 {
                         vc.dayNumber = 27
                     }
        else if indexPath.row == 27 {
                         vc.dayNumber = 28
                     }
        vc.tableName = customName
        vc.exerciseLabel = exerciseNames
        vc.exerciseImage = exerciseImage 
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
    }
    



}
