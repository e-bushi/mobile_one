/*:
 ![Make School Banner](./swift_banner.png)
 # Let's do it recursively

 - callout(Recap): Recusion is the act of calling a function from inside itself.

 ## Let's take a look at those trees again...

 - callout(Base case, n = 1): ![](tree1.png)
 

 - callout(n = 2): ![](tree2.png)
 

 - callout(n = 3): ![](tree3.png)
 

 - callout(n = 4): ![](tree4.png)

 ## Terminating recursive functions

 Before you get started, we should talk about terminating recursive functions (or ending the recursive calls). Recursive functions must have a _base case_ or terminating condition! Without that, the function will continue to call itself "infinitely". This will lead to errors from your computer as it runs out of memory. These errors are called "inifite recursion errors" or sometimes even refered to as "stack overflows". Yes, [Stack Overflow](https://stackoverflow.com) was named after a common programming error... How fitting!

 When drawing trees, our base case is the straight line. This equates to a level one tree. If our generalized, recursive `drawTree` function takes in `levels` as an argument, how can we check if we need to terminate?
 

 - callout(Hint): Try using a conditional at the start of `drawTree`! If levels is less than `1`, then you can just `return` to stop the function from continuing.

 ## Are you ready to get recursive?

 Here it goes! Time to define a recursive `drawTree` function!

 - callout(Challenge): Fill out the draw tree function! Make sure to terminate when you hit the base case and make sure the _fox_ ends up back at the same spot it started! Use the functions you defined on the previous page as a reference.

 
 - callout(Hint): Each `drawTree` iteration should call `drawTree` again for each new branch. Make sure to `rotate` and `move` as necessary to ensure you get back to the same spot. When it's working and terminating correctly for the call to `drawTree(levels: 1)`, test out `drawTree(levels: 2)`, `drawTree(levels: 3)`, `drawTree(levels: 4)`, and `drawTree(levels: 5)`.

 */

func drawTree(levels: Int) {

    func base() {
        move(steps: -25)
        move(steps: 25)
        }
    base()
    
    if levels <= 1 {
        return
    } else {
        move(steps: -25)
        rotate(degrees: -25)
        
        drawTree(levels: levels - 1)
        
        rotate(degrees: 50)
        base()
        
        drawTree(levels: levels - 1)
        
        rotate(degrees: -25)
        move(steps: 25)
    }
    
    
}

drawTree(levels: 4)

/*:

 - callout(Hint): If you are having trouble, try explaining your approach out loud to a partner. Sometimes just hearing yourself talk through your code will help you realize your mistakes! This method is referred to as [Rubber Duck Debugging](https://en.wikipedia.org/wiki/Rubber_duck_debugging).

 - callout(Secret): My cat, Pixel, takes the place of a rubber duck. I tell her about bugs I'm encountering whenever I am stuck on something. Normally she just stares at me and wonders why I woke her up but a lot of the times it helps to hear myself explain my process out loud.

 # Nice job!

 How did that go? If you're feeling up to it, try writing that same function using a for-loop. Spoiler alert, it's pretty much impossible! Once you give that a shot you'll get a better idea of how some problems are suited to recursion and others are suited to for-loops!

 ## Why do trees matter?

 It turns out, that a lot of things in programming are actually structured as trees! File systems themselves are extremely similar to trees. Each directory (or folder) can be thought of as a branch and each file can be thought of as a leaf at the end of the branch!

 Searching for a file on a computer requires code to "traverse" the tree. Since websites also rely on a tree-like structure, search engines use "web crawlers" to view all the pages on a website. These "web crawlers" are responsible for indexing or creating listings for each page to be searched later!

 */
//: [Previous](@previous) | [Next](@next)
//:
//: This is setup code to make the live visualization work!
Pen.delay = 0.7
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
