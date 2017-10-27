import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 500, height: 500)
        
        // Set starting position
        x = 250
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        
        //Adding color!!!
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: x, width: 50, height: 50)
        
        //Draw ellipse moving left up.
        canvas.drawEllipse(centreX: 500-x, centreY: x, width: 50, height: 50)

        //Draw ellipse moving down to the right
        canvas.drawEllipse(centreX: x, centreY: 500-x, width: 50, height: 50)
        
        //Draw ellipse moving down to the left
        canvas.drawEllipse(centreX: 500-x, centreY: 500-x, width: 50, height: 50)


        
        
    }
    
}
