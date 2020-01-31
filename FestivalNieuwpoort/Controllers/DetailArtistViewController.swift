//
//  DetailArtistViewController.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 30/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import UIKit
import AVFoundation

class DetailArtistViewController: UIViewController{
    
    
    
    @IBOutlet weak var artistLbl: UILabel!
    @IBOutlet weak var stageLbl: UILabel!
    @IBOutlet weak var dateLbl: UILabel!
    @IBOutlet weak var timeLbl: UILabel!
    @IBOutlet weak var descriptionTV: UITextView!
    @IBOutlet weak var playButton: UIButton!
    var selectedArtist:Artist?
    
    var mp3Player: AVAudioPlayer!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if selectedArtist != nil {
            artistLbl.text = selectedArtist?.artist
            stageLbl.text = selectedArtist?.stage
            dateLbl.text = selectedArtist?.date
            timeLbl.text = selectedArtist?.time
            descriptionTV.text = selectedArtist?.description
            let playMp3 = selectedArtist?.mp3
               do {
                let file =  Bundle.main.url(forResource: playMp3, withExtension: "mp3")
                mp3Player = try AVAudioPlayer(contentsOf: file!)
                   mp3Player.play()
               } catch {
                   print(error)
               }
           }
           
           
       }

       @IBAction func playPause(_ sender: UIButton) {
        
        if mp3Player.isPlaying{
               mp3Player.stop()
           } else {
               mp3Player.play()
           }
       }
 

}
