import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var dx : Int
    var y : Int
    var dy : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Random value
        let randomValue = random(from: 1, toButNotIncluding: 50)
        // Set starting position
        x = 0
        dx = 1
        y = randomValue
        dy = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        canvas.fillColor = Color.white
        canvas.drawRectangle(centreX: 0, centreY: 0, width: 1000, height: 1000)
        canvas.fillColor = Color.init(hue: x, saturation: 100, brightness: 100, alpha: 100)
        
        // Change position
        x += dx
        y += dy
        
        //Check position and reverse course if  we go off the edge of the screen
        if x > 475 {
            dx = -3
        }
        if x < 25 {
            dx = 3
        }
        if y > 475 {
            dy = -3
        }
        
        if y < 25 {
            dy = 3
        }
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)

}
}
