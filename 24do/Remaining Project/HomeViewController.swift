//
//  ViewController.swift
//  SlideInTransition
//
//  Created by Gary Tokman on 1/12/19.
//  Copyright © 2019 Gary Tokman. All rights reserved.
// app id : ca-app-pub-4137461363067972~1722811836

// ad: banner ap : ca-app-pub-4137461363067972/2278658685

import UIKit

class HomeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
   
    let transiton = SlideInTransition()
    let defaults  = UserDefaults.standard
    var topView: UIView?
    let date = Date()
    var num: Int!
    var workout = 0
    var kalBurn = 0
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var todaysDate: UILabel!
    @IBOutlet weak var hoursLabel: UILabel!
    @IBOutlet weak var minutesLabel: UILabel!
    @IBOutlet weak var secondsLabel: UILabel!
    @IBOutlet weak var workoutLabel: UILabel!
    @IBOutlet weak var kalLabel: UILabel!
    var hours = 0
    var minutes = 0
    var seconds = 0
    
    
    
    var imagesArray = [String]()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        navigationController?.navigationBar.barTintColor = UIColor.blue
        navigationController?.navigationBar.titleTextAttributes = [.foregroundColor: UIColor.white]
        // Do any additional setup after loading the view, typically from a nib.
        seconds = defaults.integer(forKey: "Seconds")
        workout = defaults.integer(forKey: "Workout")
        kalBurn = workout / 3
        workoutLabel.text = String(workout)
        kalLabel.text  = String(kalBurn)
       print(seconds)
         
        tableView.delegate = self
        tableView.dataSource = self
        getDate()
        performance()
       
        
    }

  //arrays MainPage
    var PictureArray = [UIImage(named: "TV1") , UIImage(named: "TV2"),UIImage(named: "TV1"),UIImage(named: "TV4"),UIImage(named: "TV1"),UIImage(named: "TV1"),UIImage(named: "yoga_balance"),UIImage(named: "TV8"),UIImage(named: "TV9"),UIImage(named: "TV10"),UIImage(named: "TV11"),UIImage(named: "TV12"),UIImage(named: "TV13"),UIImage(named: "TV14"),UIImage(named: "TV15"),UIImage(named: "TV16") ]
    var PictureText = ["GYM BACK","GYM CHEST","BEGINENER YOGA","DYNAMIC YOGA","MORNING YOGA","SUN SALUTION","YOGA BALANCE","CORE YOGA","ABS CHALLANGE","CHEST BEGINNER", "CHEST CHALLANGE", "ARM BEGINNER", "ARM CHALLANGE" ,"LEG BEGINNER", "LEG BUTT CHALLANGE", "BUTT INTERMEDIATE"]
    
    // ArrayGYMBACK
    var exName = ["Back Lat Pulldown","Bent Over Row","Cabel Incline Pushdown","Chin-ups","inverted rows","Lat Pulldown","Machine Reverse Fly","Machine T-Bar Rows","One Arm Dumbbell Rows","Pull ups", "Seated Cable Rows", "Straight-Arm Lat Pull Down", "Superman", "V-Bar Lat PullDown" ]
      var exImages = [UIImage(named: "TVV1") , UIImage(named: "TVV2"),UIImage(named: "TVV3"),UIImage(named: "TVV4"),UIImage(named: "TVV5"),UIImage(named: "TVV6"),UIImage(named: "TVV7"),UIImage(named: "TVV8"),UIImage(named: "TVV9"),UIImage(named: "TVV10"), UIImage(named: "TVV11"), UIImage(named: "TVV12"), UIImage(named: "TVV13"), UIImage(named: "TVV14")]
      
    
    // array GYMCHEST
    var GCEx = ["Barbell PullOver" , "Bench Press", "Cabel CrossOver Flys", "Close Grip Bench Press ", "Decline Dumbbell Bench Press ", "Decline Press ", "Dumbbell Flys ", "Dumbbell Press ", "Dumbbell Pullovers ", "Incline Dumbbell Flys ", "Incline Dumbbell Press ", "Incline Press ", "One Arm Pushup ", "Parallel Bar Dips ", "Pec Deck Flys ", "Pec Deck Flys", "Push-Ups "]
    var GCImages = [UIImage(named: "GC1") , UIImage(named: "GC2"),UIImage(named: "GC3"),UIImage(named: "GC4"),UIImage(named: "GC5"),UIImage(named: "GC6"),UIImage(named: "GC7"),UIImage(named: "GC8"),UIImage(named: "GC9"),UIImage(named: "GC10"), UIImage(named: "GC11"), UIImage(named: "GC12"), UIImage(named: "GC13"), UIImage(named: "GC14"),UIImage(named: "GC15"),UIImage(named: "GC16"),UIImage(named: "GC17")]
    
    // array Beginner Yoga
    
    var BYName = ["Bridge(Left) ", "Bridge(Right) ", "Downward Facing Dog " , "Seated Side Bend(Left) " , "Seated Side Bend(Right) " , "Tree(Left) ", "Tree(Right) " , "Warrior I " ,"Warrior II(Left) ", "Warrior II(Right) ", "Childs Pose ", "Mountain Pose ", "Plank "]
     var BYImages = [UIImage(named: "BY1") , UIImage(named: "BY2"),UIImage(named: "BY3"),UIImage(named: "BY4"),UIImage(named: "BY5"),UIImage(named: "BY6"),UIImage(named: "BY7"),UIImage(named: "BY8"),UIImage(named: "BY9"),UIImage(named: "BY10"), UIImage(named: "BY11"), UIImage(named: "BY12"), UIImage(named: "BY13")]
    
    // array Dynamic Yoga
 
    var DYName = ["Easy Pose ", "Locust Pose Variation ", "Side Angle(Left) ", "Side Angle(Right) ","Standig Forward Fold ", "Tree(Left) ", "Tree(Right) ", "Wind-Relieving Pose Variation(Left) ", "Wind-Relieving Pose Variation(Right) ", "Yoga Squat ", "Prayer Pose "]
    var DYImages = [UIImage(named: "DY1") , UIImage(named: "DY2"),UIImage(named: "DY3"),UIImage(named: "DY4"),UIImage(named: "DY5"),UIImage(named: "DY6"),UIImage(named: "DY7"),UIImage(named: "DY8"),UIImage(named: "DY9"),UIImage(named: "DY10"), UIImage(named: "DY11")]
    
    // array Morning Yoga
    var MYName = ["Cat Camel", "Cobra ", "Downward Facing Dog ","Easy Pose ","Neck Stretch ","Shoulder Expansion ", "Warrior I ","Warrior II(Left) ", "Warrior II(Right) ", "Childs Pose ", "Forearm Plank " ]
    var MYImages = [UIImage(named: "MY1") , UIImage(named: "MY2"),UIImage(named: "MY3"),UIImage(named: "MY4"),UIImage(named: "MY5"),UIImage(named: "MY6"),UIImage(named: "MY7"),UIImage(named: "MY8"),UIImage(named: "MY9"),UIImage(named: "MY10"), UIImage(named: "MY11")]
    
    // Core Yoga
    var CYName = ["Accomplished Pose With Eagle Arms(Left) ", "Accomplished Pose With Eagle Arms(Right) ", "Boat ", "Bound Side Angle(Left) ", "Bound Side Angle(Right) ","Cobra ", "Seated Spinal Twist(Left) ", "Seated Spinal Twist(Right) ", "Shoulder Expansion ", "Twisted Chair(Left) ", "Twisted Chair(Right) "]
    var CYImages =  [UIImage(named: "CY1") , UIImage(named: "CY2"),UIImage(named: "CY3"),UIImage(named: "CY4"),UIImage(named: "CY5"),UIImage(named: "CY6"),UIImage(named: "CY7"),UIImage(named: "CY8"),UIImage(named: "CY9"),UIImage(named: "CY10"), UIImage(named: "CY11")]
    
    // Sun Salutation
    var SSName = ["Big Toes Pose Variation ", "Bound Side Angle(Left) " , "Bound Side Angle(Right) " , "Downward Facing Dog ", "Easy Pose ", "Happy Baby ", "High Prayer Variation ", "Low Lunges(Left) ", "Low Lunges(Right) ", "Shoulder Expansion ", "Single Leg Downward Dog(Left) ", "Single Leg Downward Dog(Right) ", "Standing Side Bend ", "Plank "]
    var SSImages = [UIImage(named: "SS1") , UIImage(named: "SS2"),UIImage(named: "SS3"),UIImage(named: "SS4"),UIImage(named: "SS5"),UIImage(named: "SS6"),UIImage(named: "SS7"),UIImage(named: "SS8"),UIImage(named: "SS9"),UIImage(named: "SS10"), UIImage(named: "SS11"), UIImage(named: "SS12"), UIImage(named: "SS13"), UIImage(named: "SS14")]
    
    // YOGA BALANCE
    var YBName = ["Big Toes Pose Variation ", "Easy Pose ", "Happy Baby ", "High Prayer Variation ", "Neck Stretch ", "Tree(Left) ", "Tree(Right) ", "Warrior III(Left) ", "Warrior III(Right) ", "Wind-Relieving Pose Variation(Left) ", "Wind-Relieving Pose Variation(Right) ", "Mountain Pose ", "Prayer Pose "]
    var YBImages = [UIImage(named: "YB1"),UIImage(named: "YB2"),UIImage(named: "YB3"),UIImage(named: "YB4"),UIImage(named: "YB5"),UIImage(named: "YB6"),UIImage(named: "YB7"),UIImage(named: "YB8"),UIImage(named: "YB9"),UIImage(named: "YB10"),UIImage(named: "YB11"),UIImage(named: "YB12"), UIImage(named: "YB13")]
   
    func getDate() {
        let formatter = DateFormatter()
        formatter.dateStyle = .long
        formatter.dateFormat = "EEEE, MMM d, yyyy"
        let result = formatter.string(from: date)
        todaysDate.text = result
    }
    @IBAction func didTapMenu(_ sender: UIBarButtonItem) {
        guard let menuViewController = storyboard?.instantiateViewController(withIdentifier: "MenuViewController") as? MenuViewController else { return }
        menuViewController.didTapMenuType = { menuType in
            self.transitionToNew(menuType)
        }
        menuViewController.modalPresentationStyle = .overCurrentContext
        menuViewController.transitioningDelegate = self
        present(menuViewController, animated: true)
    }

    func transitionToNew(_ menuType: MenuType) {
        let title = String(describing: menuType).capitalized
        self.title = title
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        

        topView?.removeFromSuperview()
        switch menuType {
    
        case .MealPlan:
            let vc = storyboard.instantiateViewController(withIdentifier: "MealPlan") as! MealPlanVC
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
            
        case .GuideWorkout:
            let vc = storyboard.instantiateViewController(withIdentifier: "GuideWorkout") as! GuideWorkoutVC
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
        case .history:
            let vc = storyboard.instantiateViewController(withIdentifier: "historyVC") as! HistoryVC
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
        case .reminder:
            let vc = storyboard.instantiateViewController(withIdentifier: "reminderVC") as! ViewController
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
            
        case .customEx:
            let vc = storyboard.instantiateViewController(withIdentifier: "CustomPlanVC") as! CustomPlanVC
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
            
        case .report:
            let vc = storyboard.instantiateViewController(withIdentifier: "ReportVC") as! ReportVC
            vc.modalPresentationStyle = .fullScreen
//            vc.hours.text = String(self.hours)
//            vc.minutes.text = String(self.minutes)
//            vc.seconds.text = String(self.seconds)
            self.navigationController?.pushViewController(vc, animated: true)
        case .setting:
            let vc = storyboard.instantiateViewController(withIdentifier: "SettingVC") as! Setting_VC
            vc.modalPresentationStyle = .fullScreen
            self.navigationController?.pushViewController(vc, animated: true)
        default:
            break
        }
        
    }
//    func parse() {
//        let url = Bundle.main.url(forResource: "all_category" , withExtension: "json")
//        if let url = url {
//            let data = try? Data(contentsOf: url)
//            do{
//                print("entered")
//                let jsonDecoder = JSONDecoder()
//                let imageName = try? jsonDecoder.decode([CategoryImages].self, from: data!)
//                    print(imageName)
//                }
//          catch let jsonErr {
//                        print("error to fetch data", jsonErr)
//                    }
//
//            }
//     //   print(imagesArray)
//        }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        print(PictureArray.count)
        return PictureArray.count
     }
     
     func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "categoryCell") as! CategoryCell
        cell.categoryImage.image = PictureArray[indexPath.row]
        cell.imageText.text = PictureText[indexPath.row]
        return cell
        
     }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 200
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "GYMBACKVC") as! GymBackVC
               vc.modalPresentationStyle = .fullScreen
        if indexPath.row == 0 {
            num = 0
        vc.exImages = exImages as! [UIImage]
        vc.exName = exName
            vc.index = num
      
        }
        else if indexPath.row == 1 {
            num = 1
            vc.exImages = GCImages as! [UIImage]
            vc.exName = GCEx
            vc.index = num
           
        }
        else if indexPath.row == 2 {
            num = 2
            vc.exName = BYName
            vc.exImages = BYImages as! [UIImage]
            vc.index = num
        }
        else if indexPath.row == 3 {
            num = 3
            vc.exName = DYName
            vc.exImages = DYImages as! [UIImage]
            vc.index = num
        }
        else if indexPath.row == 4 {
            num = 4
            vc.exName = MYName
            vc.exImages = MYImages as! [UIImage]
            vc.index = num
        }
        else if indexPath.row == 5 {
            num = 5
            vc.exName = SSName
            vc.exImages = SSImages as! [UIImage]
            vc.index = num
        }
        else if indexPath.row == 6 {
            num = 6
            vc.exName = YBName
            vc.exImages = YBImages as! [UIImage]
            vc.index = num
        }
        else if indexPath.row == 7 {
            num = 7
            vc.exName = CYName
            vc.exImages = CYImages as! [UIImage]
            vc.index = num
        }
        self.navigationController?.pushViewController(vc, animated: true)
              tableView.deselectRow(at: indexPath, animated: true)
    }
    
    
}

extension HomeViewController: UIViewControllerTransitioningDelegate {
    func animationController(forPresented presented: UIViewController, presenting: UIViewController, source: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = true
        return transiton
    }

    func animationController(forDismissed dismissed: UIViewController) -> UIViewControllerAnimatedTransitioning? {
        transiton.isPresenting = false
        return transiton
    }
    func performance() {
        if seconds > 60 {
                   minutes = ((seconds%3600) / 60)
                   hours = (seconds / 3600)
                    seconds = (seconds % 3600) % 60
            minutesLabel.text = String(minutes)
            hoursLabel.text = String(hours)
            secondsLabel.text = String(seconds)
               }
        
        
        
    }
}

