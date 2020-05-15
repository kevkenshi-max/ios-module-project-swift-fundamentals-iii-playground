import UIKit


enum Currency {
    case cad
    case mxn
    
}

let usToCad = 1.41
let usToMxn = 24.15
let currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    
    if currency == .cad {
        return dollars * usToCad
    } else {
        return dollars * usToMxn
    }
}

convert(2.00)


func convert2(amountString: String) -> String? {
    
    guard let amount = Double(amountString) else {
        return "Cannot convert"
        
    }
    return String(convert(amount))
}

convert2(amountString: "5.00")



