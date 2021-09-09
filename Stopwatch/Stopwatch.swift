//
//  Stopwatch.swift
//  Stopwatch
//
//  Created by Aaratrika Chakraborty on 9/8/21.
//

import Foundation

class Stopwatch {
  
  private var startTime: NSDate?

  func start() {
    startTime = NSDate()
  }

  func stop() {
    startTime = nil
  }
  
  var elapsedTime: TimeInterval {
    if let startTime = self.startTime {
      return -1 * startTime.timeIntervalSinceNow // could also just say -startTime.timeIntervalSinceNow
    } else {
      return 0
    }
  }
  
  var elapsedTimeAsString: String {
    // return the formatted string...
    let diffMin = Int(elapsedTime/60)
    let diffSec = Int(elapsedTime.truncatingRemainder(dividingBy: 60 ))
    let diffFracSec = Int((elapsedTime * 10).truncatingRemainder(dividingBy: 10))
    return String(format: "%02d:%02d.%01d",diffMin,diffSec,diffFracSec)
  }
  
  
  
  var isRunning: Bool {
    if self.startTime != nil {
      return true
    }
    else {
      return false
    }
  }
  
  
   
}
