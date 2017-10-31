import Foundation

class Sketch : NSObject {
    
    // NOTE: Every sketch must contain an object of type Canvas named 'canvas'
    //       Therefore, the line immediately below must always be present.
    let canvas : Canvas
    
    // Position of circle
    var x : Int
    var x1 : Int
    var x2 : Int
    var y1 : Int
    var y2 : Int
    var y3 : Int
    var y4 : Int
    var y5 : Int
    
    // This function runs once
    override init() {
        
        // Create canvas object – specify size
        canvas = Canvas(width: 800, height: 5600)
        
        // Set starting position
        x = 350
        x1 = 400
        x2 = 380
        y1 = 300
        y2 = 390
        y3 = 320
        y4 = 270
        y5 = 265
    }
    
    // Runs in a loop, forever, to create the animated effect
    func draw() {
        
        // Change position
        x += 1
        x1 += 1
        x2 += 1
        y1 += 1
        y2 += 1
        y3 += 1
        y4 += 1
        y5 += 1
        
        
        //Making the Pumpkin!
      canvas.fillColor = Color.blue
        canvas.drawRectangle(centreX: 0, centreY: 0, width: 800, height: 600)
        canvas.fillColor = Color.white
        
        canvas.drawEllipse(centreX: x, centreY: y1, width: 150, height: 170)
        canvas.drawEllipse(centreX: x1, centreY: y1, width: 150, height: 170)
        canvas.drawRectangle(centreX: x2, centreY: y2, width: 30, height: 50)
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x, centreY: y3, width: 20, height: 30)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x, centreY: y1, width: 30, height: 50)
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x1, centreY: y3, width: 20, height: 30)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x1, centreY: y1, width: 30, height: 50)
        canvas.fillColor = Color.white
        canvas.drawEllipse(centreX: x2, centreY: y4, width: 140, height: 40)
        canvas.fillColor = Color.black
        canvas.drawEllipse(centreX: x2, centreY: y5, width: 140, height: 35)

       
        
    }
    
}
