import UIKit

//Usar a extension Ou transformar a String em um Array
extension String {
    func characterAtIndex(index: Int) -> Character? {
        var cur = 0
        for char in self {
            if cur == index {
                return char
            }
            cur += 1
        }
        return nil
    }
}

func CompactNumber(_ number : Int) -> String {
    if String(number).count > 4 && String(number).count < 7 {
        let formatedNumber = formatNumber(number)
        return "\(formatedNumber)K"
    }else if String(number).count >= 7 {
        let formatedNumber = formatNumber(number)
        return "\(formatedNumber)M"
    }else {
        return "\(number)"
    }
}

func formatNumber( _ number: Int) -> String{
    var formater = String(number)
    let firsNumber = formater.characterAtIndex(index: 0)!
    let secondNumber = formater.characterAtIndex(index: 1)!
   return "\(firsNumber).\(secondNumber)"
}

print(CompactNumber(5000000))
