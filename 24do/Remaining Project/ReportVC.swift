//
//  ReportVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 01/12/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
// test id  banner : ca-app-pub-3940256099942544/2934735716
// interstial ad id : ca-app-pub-4137461363067972~1722811836
// interstial unit id : ca-app-pub-4137461363067972/8554392610

import UIKit
import GoogleMobileAds


class ReportVC: UIViewController, GADBannerViewDelegate {
    
    var sec = 0
    var miu = 0
    var hrs = 0
    let def = UserDefaults.standard
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var BMI: UILabel!
    @IBOutlet weak var hours: UILabel!
    @IBOutlet weak var minutes: UILabel!
    @IBOutlet weak var seconds: UILabel!
    @IBOutlet weak var height: UITextField!
    @IBOutlet weak var weight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.isHidden = true
        bannerView.delegate = self
        sec = def.integer(forKey: "Seconds")
        performance()

        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
        bannerView.adSize = kGADAdSizeSmartBannerPortrait
        bannerView.rootViewController = self
        bannerView.load(GADRequest())
      
        if let item = def.string(forKey: "BMI"){
             BMI.text = item
        }
       

        // Do any additional setup after loading the view.
    }
    
    @IBAction func calculateBMI(_ sender: Any) {
        let h = Double(height.text!)
        let w = Double(weight.text!)
        let square = h! * h!
        let calculation = w! / square
        
        BMI.text = "The BMI is, \(calculation) "
        def.set(BMI.text, forKey: "BMI")
        
    }
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
        bannerView.isHidden = false
    }
    
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
        bannerView.isHidden = true
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    func performance() {
        if sec > 60 {
            self.miu = ((sec%3600) / 60)
                   hrs = (sec / 3600)
                    sec = (sec % 3600) % 60
            minutes.text = String(miu)
            hours.text = String(hrs)
            seconds.text = String(sec)
               }

}
}

//seconds = defaults.integer(forKey: "Seconds")
//  workout = defaults.integer(forKey: "Workout")
//  kalBurn = workout / 3
//  workoutLabel.text = String(workout)
//  kalLabel.text  = String(kalBurn)
// print(seconds)
//func performance() {
//    if seconds > 60 {
//               minutes = ((seconds%3600) / 60)
//               hours = (seconds / 3600)
//                seconds = (seconds % 3600) % 60
//        minutesLabel.text = String(minutes)
//        hoursLabel.text = String(hours)
//        secondsLabel.text = String(seconds)
//           }
//
//
//
//}
