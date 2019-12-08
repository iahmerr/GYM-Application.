//
//  OneByOneMusic.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 29/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit

class OneByOneMusic: UIViewController {

    var timer = Timer()
    @IBOutlet weak var videoView: UIView!
    @IBOutlet weak var buttonIcon: UIButton!
    var player: AVPlayer!
       var audioPlayer = AVAudioPlayer()
       var index = 0
        var videoArray = [String]()
        var arrayIndex = 0
       var music: Bool = true
       var videoName: String = ""
    var playing: Bool = true
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Lets Exercise"
        playMusic()
        playVideo()
        self.timer = Timer.scheduledTimer(timeInterval: 3.0, target: self, selector: #selector(playVideo), userInfo: nil, repeats: true)
        print(arrayIndex)
        print(videoArray)

        // Do any additional setup after loading the view.
    }
    
    @IBAction func muteMusic(_ sender: Any) {
        if playing {
                   playing = false
                   buttonIcon.setImage(UIImage(named: "ic_music_off"), for: .normal)
                   audioPlayer.stop()
                   
               }
               else {
                   playing = true
                   buttonIcon.setImage(UIImage(named: "ic_music_on"), for: .normal)
                   audioPlayer.play()
               }
            
    }
    @IBAction func playNextVid(_ sender: Any) {
        if arrayIndex < videoArray.count {
            arrayIndex += 1
            index = 0
                       music = true
                       self.timer.invalidate()
                       viewDidLoad()
            
            
        }
        else {
            print("Pehli video hai bharway")
        }
        
        
    }
    
    @IBAction func playPrevious(_ sender: Any) {
        if arrayIndex > 0 {
            arrayIndex -= 1
            index = 0
            music = true
            self.timer.invalidate()
            viewDidLoad()
        }
        else {
            print("pehli video hai bharway")
        }
    }
    
    func playMusic(){
        guard let path = Bundle.main.path(forResource: "chuttu", ofType: ".mp3") else {
            debugPrint("audio file not found")
            return
        }
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: path ))
        }
        catch {
            print("Error")
        }
        audioPlayer.play()
    }
    @objc func playVideo() {
        if index < 22 {
                print(videoName)
           guard let path = Bundle.main.path(forResource: videoArray[arrayIndex], ofType:"mp4") else {
                    debugPrint("video.m4v not found")
                    return
                }
            playMusic()
           let player = AVPlayer(url: URL(fileURLWithPath: path))
          let playerLayer = AVPlayerLayer(player: player)
           playerLayer.frame = self.videoView.bounds
           videoView.layer.addSublayer(playerLayer)
           player.play()
            index += 1
            if music == true{
                     playMusic()
                         }
                         else {
                             audioPlayer.stop()
                         }
           }
        else {
           dismiss(animated: true, completion: nil)
        }
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        audioPlayer.stop()
          music = false
          
      }
    
    
}


//
