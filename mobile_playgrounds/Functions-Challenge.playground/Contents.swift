/*:
 ![Make School Banner](./swift_banner.png)
 # Efficiently Lazy

 Finals are coming up, and Morty wants to know how much he needs to study. According to the syllabus, Morty's final grade is calculated using the following constraints:

 - **Homework:** 20%
 - **Quizzes:** 25%
 - **Tests:** 30%
 - **Midterm:** 10%
 - **Final Exam:** 15%

 Morty's current grades are:

 - **Homework:** 100, 100, 100, 85, 65, 100, 100, 100, 0, 105, 105
 - **Quizzes:** 93, 87, 100, 100, 100, 72
 - **Tests:** 98, 92, 75, 80
 - **Midterm:** 85
 - **Final exam:** ???

 ----

 ## 1. Calculate Morty's current grade.

 - callout(Challenge): Create a function called `calculateMortysGrade`. It should take no arguments and return Morty's _current grade_ as a `Double`. The final exam should not be included in this calculation!
 
 
 - note: Store Morty's current grade in the `let` constant `mortyGradeWithoutFinal`.

*/
func average(grades: Array<Int>) -> Int {
    
    var i = 0
    
    for e in grades {
        
        i += e
        
    }
    
    let average = i / (grades.count)
    
    return average
}

let homework = [100, 100, 100, 85, 65, 100, 100, 100, 0, 65, 105]
let homeworkAverage = average(grades: homework)

let quizzes = [93, 87, 100, 100, 100, 72]
let quizAverage = average(grades: quizzes)

let tests = [98, 92, 75, 80]
let testsAverage = average(grades: tests)

let midterm = 85

func calculateMortysGrade() -> Double {
    
    let gradeSoFar = Double(((homeworkAverage + quizAverage + testsAverage + midterm) / 4))
    
    return gradeSoFar
}


calculateMortysGrade()









/*:

 ----
 
## 2. Calcuate the lowest score Morty can earn on the final while still earning an *A* in the class.

 - callout(Challenge): Create a function called `calculateMortysFinalExamGradeNeeded` with an arugment of `gradeWithoutFinal`. It should return the grade Morty needs to earn on the final to earn an *A* in the class. Assume that Morty's final grade needs to be at least 89.5 points to earn an *A*.
 
 
 - note: Store the grade Morty needs on his final exam in the variable `mortyFinalNeeded`.

*/

func calculateMortysFinalExamGradeNeeded(gradeWithoutFinal: Double) -> Double {
    
    let FinalNeeded = 179 - gradeWithoutFinal
    
    
    return Double(FinalNeeded)
}

let mortyFinalNeeded = calculateMortysFinalExamGradeNeeded(gradeWithoutFinal: calculateMortysGrade())

print("Morty's current grade without a final is \(calculateMortysGrade()) and he needs a \(mortyFinalNeeded) to be happy!")

/*:
 
 ----
 
 ## 3. Help out your classmates.

 Your classmates found out about your final exam grade calculator and want you to help them calculate the scores they need on their final exams.

 Create two functions:

 1. `calculateGradeWithoutFinalExam`
 2. `calculateFinalExamGradeNeeded`

 You should be able to use these two functions for all four scenarios below!
 
 - important: These functions might need a lot of parameters. That is okay! Start on paper and plan out your approach before you code!

 ----

 ### a. Beth wants to earn 97 points for an A+.

 - **Homework:** 100 points _(20%)_
 - **Quizzes:** 100 points _(20%)_
 - **Tests:** 100 points _(20%)_
 - **Midterm:** 100 points _(20%)_
 - **Final Exam:** ??? points _(20%)_
 
 - note: Store Beth's current grade in `bethGradeWithoutFinal` and the score she  needs on her final exam in the variable `bethFinalNeeded`.

*/


func gradesWithoutFinal(_ homework: Double, _ quizzes: Double, _ tests: Double, _ midterm: Double) -> Double {
    let grade = (homework + quizzes + tests + midterm) / 4.0
    
    return grade
}

func finalGradeNeededForAPlus(gradeWithoutFinal: Double) -> Double {
    let gradeNeeded = 194 - gradeWithoutFinal

    return gradeNeeded
}

func finalGradeNeededForA(gradeWithoutFinal: Double) -> Double {
    let gradeNeeded = 179 - gradeWithoutFinal
    
    return gradeNeeded
}

func finalGradeNeededForB(gradeWithoutFinal: Double) -> Double {
    let gradeNeeded = 160 - gradeWithoutFinal
    
    return gradeNeeded
}

func finalGradeNeededForC(gradeWithoutFinal: Double) -> Double {
    let gradeNeeded = 140 - gradeWithoutFinal
    
    return gradeNeeded
}


let bethGradeWithoutFinal = gradesWithoutFinal(100, 100, 100, 100)
let bethFinalNeeded = finalGradeNeededForAPlus(gradeWithoutFinal: bethGradeWithoutFinal)
print("Beth's current grade without a final is \(bethGradeWithoutFinal) and he needs a \(bethFinalNeeded) to be happy!")




/*:
 
 ----

 ### b. Jerry wants to earn 80 points for a B.

 - **Homework:** 91 points _(20%)_
 - **Quizzes:** 72 points _(25%)_
 - **Tests:** 77 points _(25%)_
 - **Midterm:** 64 points _(10%)_
 - **Final Exam:** ??? points _(20%)_

 - note: Store Jerry's current grade in `jerryGradeWithoutFinal` and the score he needs on his final exam in the variable `jerryFinalNeeded`.
 
*/


let jerryGradeWithoutFinal = gradesWithoutFinal(91, 72, 77, 64)
let jerryFinalNeeded = finalGradeNeededForB(gradeWithoutFinal: jerryGradeWithoutFinal)
print("Jerry's current grade without a final is \(jerryGradeWithoutFinal) and he needs a \(jerryFinalNeeded) to be happy!")




/*:
 
 ----

 ### c. Summer wants to earn 89.5 points for an A.

 - **Homework:** 94 points _(20%)_
 - **Quizzes:** 89 points _(25%)_
 - **Tests:** 83 points _(30%)_
 - **Midterm:** 93 points _(10%)_
 - **Final Exam:** ??? points _(15%)_

 - note: Store Summer's current grade in `summerGradeWithoutFinal` and the score she  needs on her final exam in the variable `summerFinalNeeded`.
 
*/


let summerGradeWithoutFinal = gradesWithoutFinal(94, 89, 83, 93)
let summerFinalNeeded = finalGradeNeededForA(gradeWithoutFinal: summerGradeWithoutFinal)
print("Summer's current grade without a final is \(summerGradeWithoutFinal) and he needs a \(summerFinalNeeded) to be happy!")




/*:
 
 ----

 ### d. Rick doesn't care about school. He's fine earning 70 points for a C.

 - **Homework:** 0 points _(10%)_
 - **Quizzes:** 20 points _(10%)_
 - **Tests:** 33.33 points _(15%)_
 - **Midterm:** 100 points _(10%)_
 - **Final Exam:** ??? points _(55%)_
 
 - note: Store Rick's current grade in `rickGradeWithoutFinal` and the score he  needs on his final exam in the variable `rickFinalNeeded`.

*/

let rickGradeWithoutFinal = gradesWithoutFinal(0, 20, 33.33, 100)
let rickFinalNeeded = finalGradeNeededForC(gradeWithoutFinal: rickGradeWithoutFinal)
print("Rick's current grade without a final is \(rickGradeWithoutFinal) and he needs a \(rickFinalNeeded) to be happy!")




/*:
 
 ----

 ## 4. Format the results!

 It's time to create a function to format the results into _Strings_.
 
 - important: "Printing" is a programming term that means "output to the console". We are not talking about printing it to paper! To view the console, press this button on the top right. ![Open console](./print_console.png)
 
     An empty white box should have appeared at the bottom of your editor! How do you actually "print" to this area? You use the `print` function. `print` takes a single argument -- a `String`.
     
     If you call `print("Hello, Make School!")` then you will see `Hello, Make School!` in the console.
     
     Now... you might be wondering, how do you inject variable values into a `String`? We do this with "string interpolation". If you have the following:
     
         let number: Int = 5
         print("My number is \(number), it is one less than \(number + 1)")
     
     Then it would print `My number is 5, it is one less than 6` to the console. You can add as many of the `\(expression)` interpolations into your string as you would like. Try it out and complete the challenge below :)

 
 - callout(Challenge): Create a function that returns a fully formatted string. Use that function to _print_ each person's current grade and final exam grade needed (including Morty) to the console with the format: "_name_ currently has _gradeWithoutFinal_ points and needs to earn at least _finalExamGradeNeeded_ points on the final exam to be happy."

*/










