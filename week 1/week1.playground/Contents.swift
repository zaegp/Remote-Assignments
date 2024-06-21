import UIKit

//: Part 1
/* 2.
 a. git status - show the working tree status
 b. git diff - show changes between commits, commit and working tree
 c.
 (1) git add - add file contents to the index
 (2) git add + fileName or + .(add all of the changes at the current directory level)
 d. 
 (1) git reset - reset current HEAD to the specified state
 (2) default: --mixed
 e.
 (1) git commit - record changes to the repository
 (2) git commit -m allow us to provide the commit message on the command line rather than having to open an editor
 f. git log - show a list of the most recent commits
 g.
 (1) git branch - list, create, or delete branches
 (2) git branch + branchName : creat a new branch
 h. git merge - join two or more development histories together
 i. git push [ repo_name ] [ branch_name ] - upload local repository content to a remote repository
 j.
 (1) git remote - manage set of tracked repositories
 (2) git remote -vv show all of the remotes that's currently set up.
 k. fork
 l. git rebase - reapply commits on top of another base tip
 m. 
 (1) git cherry-pick - apply the changes introduced by some existing commits
 (2) git cherry-pick + commit_id
 n. git reflog - manage reflog information
 o.
 (1) git tag(-l or --list) - list existing tags
 (2) git tag -a: creat annotated. git tag + tagName: creat lightweight
 */

/* 3.
 1. 在GitHub上建立一個New repository
 2. 用git init指令初始化repo
 3. git remote add origin + GitHub的Repository HTTPS
*/
//: Part 2
/* 1.
 let keyword declare a constant, the value will be immutable
 var keyword declare a variable, the value will be mutable
 */

// 2.
let pi: Float = 3.1415926

// 3.
let x: Int = 5
let y: Int = 7
let average = (x + y)/2

/* 4.
 (1) Declare x.y as a float instead of an int.
 (2) (10/3)'s result type is int and (10.0/3.0)'s result type is float. (10.0/3.0) will be more precision.
*/

// 5.
let dividend:Int = 10
let divisor:Int = 3
let reminder = dividend % divisor

// 6.
var flag: Bool = true
var inputString: String = "Hello world."
let bitsInBite: Int = 8
let averageScore: Float = 86.8

/* 7.
 Type Inference infer the type of the variable or the constant, so we can omit the type when we declare the
 variable or the constant.
*/

//: Part 3
// 1.
var myFriends: [String] = []

// 2.
myFriends += ["Ian", "Bomi", "Kevin"]

// 3.
myFriends.append("Michael")

// 4.
let bestFriend = myFriends.remove(at: 2)
myFriends.insert(bestFriend, at: 0)

// 5.
for i in 0...3 {
    print(myFriends[i])
}

/* 6.
 myFriends array don't have index 5, it's valid indices is 0-3. Trying to access index 5 that outside of
 range will result in an error.
*/

// 7. use arrayName.first

// 8. use arrayName.last

// 9.
var myCountryNumber: [String: Int] = [:]

// 10.
myCountryNumber.updateValue(1, forKey: "US")
myCountryNumber.updateValue(44, forKey: "GB")
myCountryNumber["JP"] = 81

// 11.
myCountryNumber["JP"] = 0

// 12.
var emptyDictionary: [String: Int] = [:] // empty dictionary needs the type annotation
 
// 13. use dictionaryName.removeValue(forKey: Key)

//: Part 4
// 1.
let lottoNumbers = [10, 9, 8, 7, 6, 5]
for i in 3...5 {
    print(lottoNumbers[i])
}

// 2.
// (1)
for i in lottoNumbers.reversed() {
    print(i)
}
// (2)
for i in lottoNumbers {
    if i % 2 == 0 {
        print(i)
    }
}

// 3.
// (1)
var i = 5
while i >= 0 {
    print(lottoNumbers[i])
    i -= 1
}
// (2)
i = 0
while i < 5 {
    if i % 2 == 0 {
        print(lottoNumbers[i])
    }
    i += 1
}

// 4.
// (1)
i = 5
repeat {
    print(lottoNumbers[i])
    i -= 1
} while i >= 0
// (2)
i = 0
repeat {
    if i % 2 == 0 {
        print(lottoNumbers[i])
    }
    i += 1
} while i < 5

/* 
 5.
 The differences between while and repeat-while is when the condition is checked.
 while : check the condiction before the loop
 repeat-while : check the condiction after the loop
*/
 
// 6.
var isRaining: Bool?
if isRaining == true {
    print("It’s raining, I don’t want to work today.")
} else {
    print("Although it’s sunny, I still don’t want to work today.")
}

// 7.
var jobLevel = 4
// if-else
var jobLevelList = [1: "Member", 2: "Team Leader", 3: "Manager", 4: "Director"]
if 0 < jobLevel && jobLevel <= 4 {
    if let jobTitle = jobLevelList[jobLevel] {
        print(jobTitle)
    } else {
        print("We don't have this job")
    }
} else {
    print("We don't have this job")
}
// switch
switch jobLevel {
case 1:
    print("Member")
case 2:
    print("Team Leader")
case 3:
    print("Manager")
case 4:
    print("Director")
default:
    print("We don't have this job")
}

//: Part 5
// 1. The first function return type String and the second function return type Double.

// 2.
func multiply(a: Int, b: Int = 10) {
    print(a * b)
}

/* 3.
 Argument label is used when calling a function, and can be omitted.
 Parameter name is used in the implementation of the function.
*/

// 4.
func greet(person name: String) -> String {
    var result = "Hello, " + name
    return result
}
