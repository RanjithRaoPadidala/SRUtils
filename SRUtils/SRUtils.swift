//
//  SRUtils.swift
//  SRUtils
//
//  Created by Ranjith Padidala on 17/11/23.
//

import Foundation

final class SRUtils {
    
}


extension String {
    
    var isEmail : Bool {
        do {
            let regex = try NSRegularExpression(pattern: "[A-Z0-9a-z._%+-]+@[A-Za-z0-9.-]+\\.[A-Za-z]{2,}", options: .caseInsensitive)
            return regex.firstMatch(in: self, options: NSRegularExpression.MatchingOptions(rawValue: 0), range: NSMakeRange(0, self.count)) != nil
        } catch {
            return false
        }
    }
    
    var removeSpace: String {
        return self.replacingOccurrences(of: " ", with: "")
    }
    
    /// this function will return a string in pascal case.
    func pascalCase() -> String {
        let components = self.components(separatedBy: CharacterSet(charactersIn: "_- "))
        let pascalCaseString = components.map { $0.capitalized }.joined()
        return pascalCaseString
    }
    /// this function will return each word in pascal case format from a sentance
    func pascalCaseWords() -> String {
        let components = self.components(separatedBy: CharacterSet.whitespacesAndNewlines)
        let pascalCaseString = components.map { $0.capitalized }.joined(separator: " ")
        return pascalCaseString
    }
}
