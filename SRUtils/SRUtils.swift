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
}
