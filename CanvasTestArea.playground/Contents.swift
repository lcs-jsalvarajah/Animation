//: [Previous](@previous) / [Next](@next)
//: # Test Area
//:
//: Use this page to experiment with a static image.
//:
//: When you perfect a technique, you can move it into the animated sketch.
/*:
 ## Required code
 
 The following statements are required to make the playground run.
 
 Please do not remove.
 */
import Cocoa
import PlaygroundSupport

// Create canvas
let canvas = Canvas(width: 800, height: 600)

//Drawing The Pumpki base

canvas.drawEllipse(centreX: 350, centreY: 300, width: 150, height: 170)
canvas.drawEllipse(centreX: 400, centreY: 300, width: 150, height: 170)
canvas.drawRectangle(centreX: 380, centreY: 390, width: 30, height: 50)
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 350, centreY: 320, width: 20, height: 30)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 350, centreY: 300, width: 30, height: 50)
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 400, centreY: 320, width: 20, height: 30)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 400, centreY: 300, width: 30, height: 50)
canvas.fillColor = Color.white
canvas.drawEllipse(centreX: 380, centreY: 270, width: 140, height: 40)
canvas.fillColor = Color.black
canvas.drawEllipse(centreX: 380, centreY: 265, width: 140, height: 35)




/*:
 ## Add your code below
 
 Be sure to write human-readable code.
 
 Use whitespace and comments as appropriate.
 */
// Replace this comment with your first comment – what is the goal of the code you're about to write?



/*:
 ## Use source control
 To keep your work organized, and receive feedback, source control is a must.
 
 Please commit and push your work often.
 
 ![source_control](source_control.png "Source Control")
 */
/*:
 ## Template code
 The code below is necessary to see results in the Assistant Editor at right.
 
 Please do not remove.
 
 If you don't see output, remember to show the Assistant Editor, and switch to Live View:
 
 ![timeline](timeline.png "Timeline")
 */
// Don't remove the code below
PlaygroundPage.current.liveView = canvas.imageView


