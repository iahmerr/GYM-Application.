//
//  PlayVideoVC.swift
//  SlideInTransition
//
//  Created by Ahmer Hassan on 27/11/2019.
//  Copyright © 2019 Gary Tokman. All rights reserved.
//

import UIKit
import AVFoundation
import AVKit
import GoogleMobileAds

class PlayVideoVC: UIViewController, GADBannerViewDelegate {
   
    
    
    @IBOutlet weak var bannerView: GADBannerView!
    @IBOutlet weak var videoView: UIView!
    var player: AVPlayer!
    var audioPlayer = AVAudioPlayer()
    var videoNumber = 0
    var i = 0
    var sec = 0
    var music: Bool = true
    var videoName: String = ""
    var videoNameArray = [String]()
    var playing: Bool = true
   
  
    @IBOutlet weak var musicIcon: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        bannerView.isHidden = true
               bannerView.delegate = self
        Timer.scheduledTimer(timeInterval: 5.0, target: self, selector: #selector(PlayVideoVC.FullWorkOut), userInfo: nil, repeats: true)
            FullWorkOut()
        bannerView.adUnitID = "ca-app-pub-3940256099942544/2934735716"
               bannerView.adSize = kGADAdSizeSmartBannerPortrait
               bannerView.rootViewController = self
               bannerView.load(GADRequest())

       // print(videoNameArray)
        //playVideo()
        
        playMusic()

        
    }
    @IBAction func muteMusic(_ sender: UIButton) {
       //ic_music_on
        if playing {
            playing = false
            musicIcon.setImage(UIImage(named: "ic_music_off"), for: .normal)
            audioPlayer.stop()
            
        }
        else {
            playing = true
            musicIcon.setImage(UIImage(named: "ic_music_on"), for: .normal)
            audioPlayer.play()
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

    
    @objc func FullWorkOut() {
        sec += 1
        if  i < videoNumber {
           guard let path = Bundle.main.path(forResource: videoNameArray[i], ofType:"mp4") else {
                    debugPrint("video.m4v not found")
                    return
                }
           let player = AVPlayer(url: URL(fileURLWithPath: path))
          let playerLayer = AVPlayerLayer(player: player)
           playerLayer.frame = self.videoView.bounds
           videoView.layer.addSublayer(playerLayer)
           player.play()
            if sec == 4 {
                 i += 1
                sec = 0
            let storyboard = UIStoryboard(name: "Main", bundle: nil)
                let vc = storyboard.instantiateViewController(withIdentifier: "TimerVC") as! TimerVC
                vc.modalPresentationStyle = .fullScreen
                present(vc, animated: true, completion: nil)
                vc.val = i
       
            }
            if music == true{
        playMusic()
            }
            else {
                audioPlayer.stop()
            }
           }
        else {
            navigationController?.popViewController(animated: true)

            dismiss(animated: true, completion: nil)
        }
    }
    override func viewWillDisappear(_ animated: Bool) {
      audioPlayer.stop()
        music = false
        
    }
    func adView(_ bannerView: GADBannerView, didFailToReceiveAdWithError error: GADRequestError) {
           bannerView.isHidden = true
       }
    func adViewDidReceiveAd(_ bannerView: GADBannerView) {
           bannerView.isHidden = false
       }
       
    

  

}
//
//private func playVideo() {
//print(videoName)
//       guard let path = Bundle.main.path(forResource: videoName, ofType:"mp4") else {
//                debugPrint("video.m4v not found")
//                return
//            }
//       let player = AVPlayer(url: URL(fileURLWithPath: path))
//      let playerLayer = AVPlayerLayer(player: player)
//       playerLayer.frame = self.videoView.bounds
//       videoView.layer.addSublayer(playerLayer)
//       player.play()
//       }
