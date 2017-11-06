// Extend the Degrees data type so that we can obtain it's value in radians
extension Degrees {
    func toRadians() -> Double {
        return Double(self) * Double.pi / 180.0
    }
}

import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Degrees
    var dx : Int
    var y : Int
    var dy : Int
    
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 0
        dx = 1
        y = 0
        dy = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Transformation parameters
        let a = 100.0
        
        // Change position
        x += 1
        y = Int(a * sin(x.toRadians()))
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: Int(x) , centreY: y + 100 , width: 1, height: 1)
        
    }
    
}
