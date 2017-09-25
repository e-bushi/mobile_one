/*:
 ![Make School Banner](./swift_banner.png)
 # Fancy trees

 Now that you've conquered a basic tree, can you make it fancier?

 - callout(Copy your code): Grab the code you wrote for `drawTree` on the last page and copy it into the body of the `drawTree` function below!

 ## Modify to make a fancier tree

 We created a pretty basic looking tree in the last few exercises. Now that we have a fully recursive implementation, can you make it fancier?

 Before you get started, let's take a look at the functions you can use!

 ### Drop and lift the pen
 
 - callout(Drop the pen): `penDown()`
 
 
 - callout(Lift the pen): `penUp()`
 
 
 - note: The pen starts out down.
 
 ### Moving the pen
 
 - callout(Move by a number of steps): `move(steps: Int)`
 
 
 - callout(Move directly to coordinates): `moveTo(x: Int, y: Int)`
 
 
 - callout(Rotate heading by an angle): `rotate(degrees: Int)`
 
 ### Change the pen
 
 - callout(Set color of pen): `setColor(red: Double, green: Double, blue: Double)`
 
 
 - note: Each value should be between 0 and 1. eg. `setColor(red: 0.0, green: 0.0, blue: 0.0)` would change the pen to be black. `setColor(red: 1.0, green: 0.0, blue: 0.0)` would change the pen to be red.
 
 
 - callout(Set thickness of pen): `set(thickness: Double)`

 ## Get started!

 - experiment: Let your imagination go wild and make something awesome!

 */
penUp()
moveTo(x: 250, y: 0)
penDown()

func drawTree(levels: Int) {
    
    func base() {
        
        move(steps: -25)
        move(steps: 25)
    }
    base()
    
    if levels <= 1 {
        return
    } else {
        set(thickness: Double(levels))
        move(steps: -25)
        rotate(degrees: -25)
        
        drawTree(levels: levels - 1)
        
        rotate(degrees: 50)
        base()
        
        setColor(red: 0.0, green: 0.5, blue: 0.0)
        drawTree(levels: levels - 1)
        setColor(red: 0.0, green: 0.0, blue: 0.5)
        
        rotate(degrees: -25)
        move(steps: 25)
    }


}
drawTree(levels: 5)

/*:

 ## Inspiration

 Here are some ideas to try out...

 - Make branches thinner with each iteration (you may want to add additional parameters).
 - Decrease the angle in between branches with each iteration (you may want to add additional parameters).
 - Decrease the length of branches with each iteration (you may want to add additional parameters).
 - Add "leaves" to the tips of the tree (draw a leaf before your `return` call).
 - Introduce randomness! Real trees are not perfectly symettrical, why should yours be?
 - Change color between branches or for leaves.

 */
//: [Previous](@previous) | [Next](@next)
//:
//: This is setup code to make the live visualization work!
Pen.delay = 0.2
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
