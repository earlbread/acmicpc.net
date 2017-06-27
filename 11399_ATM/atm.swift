import Foundation

func solution() {
    let _ = Int(readLine()!)!
    let p = readLine()!.components(separatedBy: " ").map({ Int($0)! })
    let sorted = p.sorted()

    var waitingTime = 0
    var totalTime = 0

    for i in sorted {
        waitingTime += i
        totalTime += waitingTime
    }

    print(totalTime)
}

solution()
