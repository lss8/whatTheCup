//
// SoundManager.swift
// JAMADA
//
// Created by sofiadinizms on 06/04/24.
//
import Foundation
import AVFoundation
var soundEffect: AVAudioPlayer!
func playSoundtrack(sound: String) {
  let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
  guard url != nil else {
    return
  }
  do {
    soundEffect = try AVAudioPlayer(contentsOf: url!)
    soundEffect?.setVolume(1.0, fadeDuration: 0.1)
    soundEffect?.play()
    soundEffect.numberOfLoops = 0
  } catch {
    print("")
  }
}
func stopSoundtrack(sound: String) {
  let url = Bundle.main.url(forResource: sound, withExtension: "mp3")
  guard url != nil else {
    return
  }
  do {
    soundEffect = try AVAudioPlayer(contentsOf: url!)
    soundEffect?.setVolume(0.3, fadeDuration: 0.1)
    soundEffect?.stop()
  } catch {
    print("")
  }
}



