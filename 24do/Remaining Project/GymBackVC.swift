//
//  GymBackVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 22/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit

class GymBackVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var hours = 0
    var minutes = 0
    var seconds = 0
    var num = 0
    var history = ""
    var historyArray : [String] = []
    var workout = 0
    @IBOutlet weak var tableView: UITableView!
    var exName = [String]()
    var exImages = [UIImage]()
    var index: Int!
    let defaults = UserDefaults.standard
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Exercise List"
        tableView.dataSource = self
        tableView.delegate = self
        if let items = defaults.array(forKey: "FullHistory") as? [String] {
            historyArray = items
        }
        // yahan object ki jagah Int kar do agar error aye toh
        if let work = defaults.object(forKey: "Workout") as? Int {
            workout = work
            }
        
      

    }
    @IBAction func PlayAllVideos(_ sender: Any) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        
        let vc = storyboard.instantiateViewController(withIdentifier: "VideoPlayer") as! PlayVideoVC
        vc.modalPresentationStyle = .fullScreen
        
        if index == 0 {
        vc.videoNameArray = videoName
            vc.videoNumber = videoName.count
            num = videoName.count
            seconds = num * 30
            workout = num
         //   historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append("Full GYMBACK")
            self.defaults.set(historyArray, forKey: "FullHistory")
            self.defaults.set(seconds, forKey: "Seconds")
            self.defaults.set(workout, forKey: "Workout")
            
            
        }
        else if index == 1 {
            vc.videoNameArray = GCVideo
            vc.videoNumber = GCVideo.count
            num = GCVideo.count
            seconds = num * 30
            workout = num
            historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append("Full GYMCHEST")
            self.defaults.set(workout, forKey: "Workout")
            self.defaults.set(seconds, forKey: "Seconds")
             self.defaults.set(historyArray, forKey: "FullHistory")
        }
        else if index == 2 {
            vc.videoNameArray = BYVideo
            vc.videoNumber = BYVideo.count
            num = BYVideo.count
            seconds = num * 30
            workout = num
            historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append("Full Yoga Beginner")
             self.defaults.set(historyArray, forKey: "FullHistory")
            self.defaults.set(workout, forKey: "Workout")
            self.defaults.set(seconds, forKey: "Seconds")
        }
        else if index == 3 {
            vc.videoNameArray = DYVideo
            vc.videoNumber = DYVideo.count
            num = DYVideo.count
            seconds = num * 30
            workout = num
             history = "Full DYNAMICYOGA"
            historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append(history)
            self.defaults.set(workout, forKey: "Workout")
            self.defaults.set(seconds, forKey: "Seconds")
             self.defaults.set(historyArray, forKey: "FullHistory")
        }
        else if index == 4 {
            vc.videoNameArray = MYVideo
             vc.videoNumber = MYVideo.count
            num = MYVideo.count
            seconds = num * 30
            workout = num
            historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append("Full MORNING YOGA")
            self.defaults.set(workout, forKey: "Workout")
            self.defaults.set(seconds, forKey: "Seconds")
             self.defaults.set(historyArray, forKey: "FullHistory")
        }
        else if index == 5 {
            vc.videoNameArray = SSVideo
             vc.videoNumber = SSVideo.count
            num = SSVideo.count
            seconds = num * 30
            workout = num
            historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append("Full SUNSALUTION")
            self.defaults.set(workout, forKey: "Workout")
            self.defaults.set(seconds, forKey: "Seconds")
             self.defaults.set(historyArray, forKey: "FullHistory")
        }
        else if index == 7 {
            vc.videoNameArray = CYVide
             vc.videoNumber = CYVide.count
            num = CYVide.count
            seconds = num * 30
            workout = num
            historyArray = defaults.array(forKey: "FullHistory") as! [String]
            self.historyArray.append("Full COREYOGA")
            self.defaults.set(workout, forKey: "Workout")
            self.defaults.set(seconds, forKey: "Seconds")
             self.defaults.set(historyArray, forKey: "FullHistory")
        }
       // print(self.historyArray)
        self.navigationController?.pushViewController(vc, animated: true)
        
    }
    
    // arrays
//    var exName = ["Back Lat Pulldown","Bent Over Row","Cabel Incline Pushdown","Chin-ups","inverted rows","Lat Pulldown","Machine Reverse Fly","Machine T-Bar Rows","One Arm Dumbbell Rows","Pull ups", "Seated Cable Rows", "Straight-Arm Lat Pull Down", "Superman", "V-Bar Lat PullDown" ]
//    var exImages = [UIImage(named: "TVV1") , UIImage(named: "TVV2"),UIImage(named: "TVV3"),UIImage(named: "TVV4"),UIImage(named: "TVV5"),UIImage(named: "TVV6"),UIImage(named: "TVV7"),UIImage(named: "TVV8"),UIImage(named: "TVV9"),UIImage(named: "TVV10"), UIImage(named: "TVV11"), UIImage(named: "TVV12"), UIImage(named: "TVV13"), UIImage(named: "TVV14")]
    var videoName = ["TVV1", "TVV2", "TVV3", "TVV4", "TVV5", "TVV6", "TVV6", "TVV7", "TVV8", "TVV9", "TVV10", "TVV11", "TVV12", "TVV13", "TVV14"]
    var GCVideo = ["GC1", "GC2", "GC3", "GC4", "GC5", "GC6", "GC7", "GC8", "GC9", "GC10", "GC11", "GC12", "GC13", "GC14", "GC15", "GC16", "GC17"]
    var BYVideo = ["Bridge(Left) ", "Bridge(Right) ", "Downward Facing Dog " , "Seated Side Bend(Left) " , "Seated Side Bend(Right) " , "Tree(Left) ", "Tree(Right) " , "Warrior I " ,"Warrior II(Left) ", "Warrior II(Right) ", "Childs Pose ", "Mountain Pose ", "Plank "]
    var DYVideo = ["Easy Pose ", "Locust Pose Variation ", "Side Angle(Left) ", "Side Angle(Right) ","Standig Forward Fold ", "Tree(Left) ", "Tree(Right) ", "Wind-Relieving Pose Variation(Left) ", "Wind-Relieving Pose Variation(Right) ", "Yoga Squat ", "Prayer Pose "]
    var MYVideo = ["V1", "V2", "V3","V4","V5","V6", "V7","V8", "V9", "V10", "V11" ]
    var CYVide = ["CY1", "CY2", "CY3", "CY4", "CY5", "CY5", "CY6", "CY7", "CY8", "CY9", "CY10", "CY11"]
    var SSVideo = ["SS1", "SS2","SS3","SS4", "SS5", "SS6","SS7", "SS8", "SS9", "SS10", "SS11","SS12", "SS13", "SS14"]
     var YBVideo = ["YB1", "YB2","YB3","YB4", "YB5", "YB6","YB7", "YB8", "YB9", "YB10", "YB11","YB12", "YB13"]
    

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return exName.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "GymBackCell") as! GymBackCell
        cell.exImage.image = exImages[indexPath.row]
        cell.exName.text = exName[indexPath.row]
        return cell
    }
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "PlayVideo") as! OneByOneMusic
          seconds = defaults.integer(forKey: "Seconds")
        if index == 0 {
          vc.videoName = videoName[indexPath.row]
            vc.arrayIndex = indexPath.row
            vc.videoArray = videoName
            
        }
        else if index == 1 {
            vc.videoName = GCVideo[indexPath.row]
            vc.arrayIndex = indexPath.row
            vc.videoArray = GCVideo
            
           
        }
        else if index == 2 {
            vc.videoName = BYVideo[indexPath.row]
            vc.arrayIndex = indexPath.row
            vc.videoArray = BYVideo
            
        }
        else if index == 3 {
            vc.videoName = DYVideo[indexPath.row]
            vc.arrayIndex = indexPath.row
            vc.videoArray = DYVideo
            
            
        }
        else if index == 4 {
            vc.videoName = MYVideo[indexPath.row]
            vc.arrayIndex = indexPath.row
            vc.videoArray = MYVideo
            
        }
        else if index == 5 {
            vc.videoName = SSVideo[indexPath.row]
            vc.arrayIndex = indexPath.row
            vc.videoArray = SSVideo
          
        }
       else if index == 6 {
            vc.videoName = YBVideo[indexPath.row]
            vc.videoArray = YBVideo
            vc.arrayIndex = indexPath.row
           
        }
            
        else if index == 7 {
            vc.videoName = CYVide[indexPath.row]
            vc.videoArray = CYVide
            vc.arrayIndex = indexPath.row
           
            
        }
        history = exName[indexPath.row]
       
        self.historyArray.append(history)
        self.defaults.set(historyArray, forKey: "FullHistory")
        
            workout += 1
             self.defaults.set(workout, forKey: "Workout")
            
             seconds = defaults.integer(forKey: "Seconds")
             seconds += 30
            self.defaults.set(seconds, forKey: "Seconds")
      print(historyArray)
        
        vc.modalPresentationStyle = .fullScreen
        self.navigationController?.pushViewController(vc, animated: true)
     
//        let homevc = storyboard.instantiateViewController(withIdentifier: "") as! HomeViewController
//        homevc.seconds = seconds
        
              
            //  print(seconds)
       // print(videoName[indexPath.row])
        
    }

}
