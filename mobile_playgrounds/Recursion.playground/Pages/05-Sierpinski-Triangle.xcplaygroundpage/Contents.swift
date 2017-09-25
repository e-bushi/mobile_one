import Foundation
/*:
 ![Make School Banner](./swift_banner.png)
 # Triforce time!
 
 Let's try drawing something even more [fractal](https://en.wikipedia.org/wiki/Fractal)-y than a tree! If you've played any game from the _Zelda_ series, you'll recongize this as a _triforce_, but it's really based off of the [Sierpinski triangle](https://en.wikipedia.org/wiki/Sierpinski_triangle)!
 
 ## Sierpinski triangle
 
 The Sierpinski triangle is a recursively, defined fractal made out of equilateral triangles. Each iteration draws 3 more triangles inside of the original. Let's take a look at each case!
 
 - callout(Base case, n = 1): ![](sierpinski1.png)
 
 
 - callout(n = 2): ![](sierpinski2.png)
 
 
 - callout(n = 3): ![](sierpinski3.png)
 
 
 - callout(n = 4): ![](sierpinski4.png)
 
 
 - callout(n = 5): ![](sierpinski5.png)
 
 
 - callout(n = 6): ![](sierpinski6.png)
 
 
 - callout(n = 7): ![](sierpinski7.png)
 
 ## drawTriangle
 
 We've already created a `drawTriangle` function to get you started. This takes in a base center as a `(x: Double, y: Double)` tuple and a `height`. Each are defined as labeled in the picture below.
 
 ![](drawTriangle.png)
 
 */
func drawTriangle(base center: (x: Double, y: Double), height: Double) {
    let side = height * 2 / sqrt(3)
    let left = (center.x - side/2, center.y)
    let right = (center.x + side/2, center.y)
    let top = (center.x, center.y + height)
    penUp()
    moveTo(x: left.0, y: left.1)
    penDown()
    moveTo(x: right.0, y: right.1)
    moveTo(x: top.0, y: top.1)
    moveTo(x: left.0, y: left.1)
}
/*:
 
 ## Let's get started!
 
 - callout(Challenge): Complete the `sierpinski` function below! Remember, each iteration should create 3 new subtriangles!
 
 Remember to stop the recursion with your base case!
 
 - callout(Hint): The bottom two internal triangles have a base center that is horizontally offset by 1/4 of a _side_ from the original triangle's base canter. The top triangle has a base center 1/2 a _height_ above the original triangle's base center. Since `drawTriangle` takes in a height, how are you going to calculate the side length? Maybe you should peek at the `drawTriangle` method for help...
 
 */

func sierpinski(iterations: Int, base center: (x: Double, y: Double), height: Double) {
    
    if iterations < 1 {
        return
    } else {
       drawTriangle(base: center, height: height)
        var side = height * 2 / sqrt(3)
        
        sierpinski(iterations: iterations - 1, base: (center.x-side/4, center.y), height: height/2)
        
        sierpinski(iterations: iterations - 1, base: (center.x+(side*0.25), center.y), height: height/2)
        
        sierpinski(iterations: iterations - 1, base: (center.x, center.y+(height*0.50)), height: height/2)
       
        
    }
    
}

sierpinski(iterations: 7, base: (290, 50), height: 300)

/*:
 - important: This is a recursive thinking challenge. Each iteration of `sierpinski` should only make one call to `drawTriangle`. You should make three, recursive calls to `sierpinski` if you have not reached the base case.

[Previous](@previous)

This is setup code to make the live visualization work!
 */
Pen.delay = 0
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
