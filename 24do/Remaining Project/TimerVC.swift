//
//  TimerVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 30/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class TimerVC: UIViewController {

      var player: AVPlayer!
    var val = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "At Ease"
        playVideo()
            print(val)
        // Do any additional setup after loading the view.
      
    }
    @IBAction func skipButton(_ sender: Any) {
       let storyboard = UIStoryboard(name: "Main", bundle: nil)
        let vc = storyboard.instantiateViewController(withIdentifier: "VideoPlayer") as! PlayVideoVC
        vc.i = val
        self.navigationController?.popViewController(animated: true)
        dismiss(animated: true, completion: nil)
    }
    
    @objc func playVideo() {
        
           guard let path = Bundle.main.path(forResource: "timer", ofType:"mp4") else {
                    debugPrint("video.m4v not found")
                    return
                }
          
           let player = AVPlayer(url: URL(fileURLWithPath: path))
          let playerLayer = AVPlayerLayer(player: player)
           playerLayer.frame = self.view.bounds
           view.layer.addSublayer(playerLayer)
           player.play()
            
    }
    @objc func backToEx() {
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
               let vc = storyboard.instantiateViewController(withIdentifier: "VideoPlayer") as! PlayVideoVC
               vc.i = val
               self.navigationController?.popViewController(animated: true)
               dismiss(animated: true, completion: nil)
        
    }
}
