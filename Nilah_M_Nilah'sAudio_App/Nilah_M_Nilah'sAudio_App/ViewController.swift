//
//  ViewController.swift
//  Nilah_M_Nilah'sAudio_App
//
//  Created by Nilah Marshall on 8/19/20.
//  Copyright © 2020 Nilah Marshall. All rights reserved.
//

import UIKit

//STEP 1: - Import the audio library
import AVFoundation

class ViewController: UIViewController {

    //STEP 2: - Instantiate the audio player
    var audioPlayer = AVAudioPlayer()
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //STEP 3: - Tell us where the sound file is
        let sound = Bundle.main.path(forResource: "Rollercoaster", ofType: "wav")
        
        //STEP 4: - Handle any errors or issues
        do {
            audioPlayer = try AVAudioPlayer(contentsOf: URL(fileURLWithPath: sound!))
        } catch {
            print(error)
        }
    }

    //STEP 5: - Set up the buttons to pause, play, and stop the sounds
    @IBAction func pauseAudio(_ sender: Any) {
        audioPlayer.pause()
    }
    
    @IBAction func playAudio(_ sender: Any) {
        audioPlayer.play()
    }
    
    @IBAction func stopAudio(_ sender: Any) {
        audioPlayer.stop()
    }
    
    
    
    
}

