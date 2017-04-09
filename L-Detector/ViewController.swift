//
//  ViewController.swift
//  L-Detector
//
//  Created by Sujith Vishwajith on 4/9/17.
//  Copyright © 2017 Sujith Vishwajith. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
  @IBOutlet var mainbutton: UIButton!
  let synth = AVSpeechSynthesizer()
  var myUtterance = AVSpeechUtterance(string: "L Detected")

  override func viewDidLoad() {
    super.viewDidLoad()
    // Do any additional setup after loading the view, typically from a nib.
    self.mainbutton.layer.cornerRadius = 5
    self.myUtterance.voice = AVSpeechSynthesisVoice(language: "en-gb")
  }

  @IBAction func detectL(_ sender: Any) {
    if (!synth.isSpeaking) {
      myUtterance.rate = 0.4
      synth.speak(myUtterance)
    }
  }

//  var audioFilePath = Bundle.main.path(forResource: "music", ofType: "mp3")
//  if audioFilePath != nil {
//  var audioFileUrl = NSURL.fileURLWithPath(audioFilePath!)
//
//  audioPlayer = AVAudioPlayer(contentsOfURL: audioFileUrl, error: nil)
//  audioPlayer.play()
//
//  } else {
//  println("audio file is not found")
//  }

}

