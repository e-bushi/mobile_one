/*:
![Make School Banner](./swift_banner.png)
# Recursion

Recursion is an interesting topic in computer science. It's simple to understand but some people struggle with it's application. Simply put, recusion is the act of calling a function from inside itself.

Let's take a look at an example.

    func recursionTest() {
        recursionTest()
    }

This is a recursive function. It's a useless function and will just cause your computer to get angry, but it is still recursive!

# How can this be useful?

Let's take a look at using recursion in-place of a for-loop. If you recall, you can print the numbers from 1 to 10 like this...

 */
for i in 1...10 {
    print("for-loop iteration: \(i)")
}
/*:

## Can you implement this without a for-loop?

Yes! This is a perfect test for recursion! Let's see how it would look if we could not use a for-loop...

*/
func count(from: Int, to: Int) {
     print("recursion iteration: \(from)")
     if from < to {
         count(from: from + 1, to: to)
     }
}
count(from: 1, to: 10)
/*:

Read that over a few times. What happens when `count(from: 1, to: 10)` is called? Pretend you are the computer and run through it line by line!

## I guess... that works?

Yeah, counting recursively is a bit painful. The code is longer _and_ less intuitive! Are there any cases that using recursion actually makes sense in?

- important: There are some cases that recursion will make your life much much easier. In other cases, it will not make sense to use recursion. Remember, we always want to use the right tool for the job! Recursion is just another tool in your toolcase.

# When is recursion useful?

Recursion is especially useful when dealing with trees. Don't believe me? Let's take a small detour...

## Drawing out tree

- callout(Draw it out!):
  1. Grab a pen and some paper. Draw this without lifting the pen from the paper. Your pen _must_ end in the same place it started.

  ![](tree1.png)

  2. Okay... That was easy... Now, in a seperate space, draw this without lifting the pen from the paper. Your pen _must_ end in the same place it started.
 
  ![](tree2.png)

  3. That was a bit harder, but still pretty easy... Bear with me, we'll get to the point soon! Draw this without lifting the pen from the paper. Your pen _must_ end in the same place it started.
  
  ![](tree3.png)

## Okay! Enough trees! Why did you make me do that?

Well, do you think you can write the code to draw trees like that?

### One level trees in code

- callout(Try it out!): Fill out the function below and uncomment the line calling it! The function should draw a "one level" tree like in the picture. Make sure the _fox_ ends up back at the same spot it started!

  ![](tree1.png)
 

- callout(Rules): You can only use `move(steps: Int)` and `rotate(degrees: Int)` to complete this! Both functions support negative values.

*/

func drawOneLevelTree() {

    move(steps: 50)
    rotate(degrees: 180)
    move(steps: 50)
}
 //drawOneLevelTree()

/*:

### Two level trees in code

One you have that working, comment out the the call to `drawOneLevelTree()`. Let's try a "two level" tree!

- callout(Try it out!): Fill out the function below and uncomment the line calling it! The function should draw a "two level" tree like in the picture. Make sure the _fox_ ends up back at the same spot it started!

     ![](tree2.png)
 
 
 - callout(Rules): You can only use `move(steps: Int)` and `rotate(degrees: Int)` to complete this! Both functions support negative values.

*/

func drawTwoLevelTree() {
    rotate(degrees: 180)
    move(steps: 50)
    rotate(degrees: 25)
    move(steps: 35)
    
    rotate(degrees: 180)
    move(steps: 35)
    rotate(degrees: 130)
    move(steps: 35)
    
    rotate(degrees: 180)
    move(steps: 35)
    rotate(degrees: 25)
    move(steps: 50)
}
 //drawTwoLevelTree()

/*:

### Three level trees in code

One you have that working, comment out the the call to `drawTwoLevelTree()`. Let's try a "three level" tree!

- callout(Try it out!): Fill out the function below and uncomment the line calling it! The function should draw a "three level" tree like in the picture. Make sure the _fox_ ends up back at the same spot it started!

  ![](tree3.png)
 
 
 - callout(Rules): You can only use `move(steps: Int)` and `rotate(degrees: Int)` to complete this! Both functions support negative values.

*/

func drawThreeLevelTree() {
    rotate(degrees: 180)
    move(steps: 50)
    rotate(degrees: 25)
    move(steps: 35)
    rotate(degrees: -25)
    move(steps: 35)
    rotate(degrees: 180)
    move(steps: 35)
    rotate(degrees: 225)
    move(steps: 35)
    rotate(degrees: 180)
    move(steps: 35)
    rotate(degrees: -20)
    move(steps: 35)
    
    rotate(degrees: -25)
    rotate(degrees: 180)
    
    rotate(degrees: -25)
    
    move(steps: 35)
    
    rotate(degrees: -25)
    move(steps: 35)
    rotate(degrees: 180)
    move(steps: 35)
    rotate(degrees: 225)
    move(steps: 35)
    rotate(degrees: 180)
    move(steps: 35)
    rotate(degrees: -20)
    move(steps: 35)
    
    rotate(degrees: 25)
    
    move(steps: 50)
}
 drawThreeLevelTree()

/*:

### Four level trees in code

So, now that you've drawn those out both physically and through code, what do you think a "four level" tree would look like?

- callout(Draw it out!): Grab the pen and paper again. Draw a "four level" tree without lifting the pen from the paper. Your pen _must_ end in the same place it started.

And once more, transfer that logic to code...

- callout(Try it out!): Fill out the function below and uncomment the line calling it! The function should draw a "four level" tree like your picture. Make sure the _fox_ ends up back at the same spot it started!

*/

func drawFourLevelTree() {

}
// drawFourLevelTree()

/*:

# The final challenge

Let's jump straight to a much bigger tree. How do you feel about writing the code to draw a "ten level" tree?

- callout(#trolling): Fill out the function below and uncomment the line calling it! The function should draw a "ten level" tree like in the picture. Make sure the _fox_ ends up back at the same spot it started!

*/

func drawTenLevelTree() {

}
// drawTenLevelTree()

/*:

## You're not serious, are you?

No, no. You do not actually have to write the code for a "ten level" tree by hand! But do consider this... Given your approach to one, two, three, and four level trees -- how many lines of code do you think it'll take to draw a ten level tree? Tens? Hundreds? Thousands? It turns out that it takes just over 5,000 lines if you were to do it by hand!

How about a "20-level" tree? Can you imagine writing that by hand? It would take just about a million lines of code to brute force that!

Don't worry though, if we use recursion, we could draw a tree of _any_ size in just ten lines of code!

*/
//: [Next](@next)






























































//: This is setup code to make the live visualization work!
Pen.delay = 0.2
import PlaygroundSupport
import Foundation
let results = DrawingScene.setup()
PlaygroundPage.current.liveView = results
