//
//  Event.swift
//  FestivalNieuwpoort
//
//  Created by mobapp01 on 29/01/2020.
//  Copyright © 2020 Ehb. All rights reserved.
//

import Foundation

class Event{
  
    var artist:String
    var date:String
    var time:String
    var stage:String
    
    internal init(artist: String, date: String, time: String, stage: String) {
          self.artist = artist
          self.date = date
          self.time = time
          self.stage = stage
      }
}
