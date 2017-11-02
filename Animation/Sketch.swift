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
       
        // Set starting position
        x = 0
        dx = 1
        y = 0

        dy = 1
        
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
      
       
        canvas.fillColor = Color.init(hue: x, saturation: 100, brightness: 100, alpha: 100)
        canvas.drawShapesWithBorders = false
        // Change position
        x += dx
        y = Int(-0.01*pow(Double(x)-150, 2) + 450)
        print(y)
        
        //Check position and reverse course if  we go off the edge of the screen
       
        
        
        // Draw an ellipse in the middle of the canvas
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)
        canvas.drawEllipse(centreX: x, centreY: y, width: 50, height: 50)

        
    }
}
