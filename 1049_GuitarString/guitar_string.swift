import Foundation

func solution() {
    var input = readLine()!.components(separatedBy: " ")
    let n = Int(input[0])!
    let m = Int(input[1])!

    var minimumPackagePrice = 1000
    var minimumIndividualPrice = 1000

    for _ in 1...m {
        input = readLine()!.components(separatedBy: " ")
        let packagePrice = Int(input[0])!
        let individualPrice = Int(input[1])!

        if packagePrice < minimumPackagePrice {
            minimumPackagePrice = packagePrice
        }

        if individualPrice < minimumIndividualPrice {
            minimumIndividualPrice = individualPrice
        }
    }

    var minimumPrice = 0

    let numberOfIndividualStrings = n % 6
    let numberOfPackages = n / 6
    minimumPrice += min(minimumPackagePrice, minimumIndividualPrice * numberOfIndividualStrings)
    minimumPrice += min(minimumPackagePrice, minimumIndividualPrice * 6) * numberOfPackages

    print(minimumPrice)
}

solution()
