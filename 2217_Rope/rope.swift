func solution() -> Int {
    let n = Int(readLine()!)!
    var totalMax = 0
    var weights = [Int]()

    for _ in 1...n {
        let k = Int(readLine()!)!
        weights.append(k)
    }

    weights = weights.sorted(by: >)

    for i in 0..<n {
        let max = weights[i] * (i + 1)

        if max > totalMax {
            totalMax = max
        }
    }

    return totalMax
}

print(solution())
