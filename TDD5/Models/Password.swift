//
//  Password.swift
//  TDD5
//
//  Created by Jordan Fraughton on 6/10/24.
//

import Foundation

struct Password {
    var value: String
    var isValid: Bool {
        if hasCorrectCharCount
            && hasUpperAndLower
            && hasNumber
            && hasSpecialCharacter
            && !hasSequences {
            return true
        } else {
            return false
        }
    }

    var hasCorrectCharCount: Bool {
        if value.count >= 8 && value.count <= 30 {
            return true
        } else {
            return false
        }
    }
    
    var hasUpperAndLower: Bool {
        var hasUpper = value.contains(where: {$0.isUppercase})
        var hasLower = value.contains(where: {$0.isLowercase})
        
        return hasUpper && hasLower
    }
    
    var hasNumber: Bool {
        value.contains(where: {$0.isNumber})
    }
    
    var hasSpecialCharacter: Bool {
        value.contains(where: {$0.isPunctuation})
    }
    
    var hasSequences: Bool {
        let containsSequence = value.contains("1234") ||
        value.contains("4444") ||
        value.lowercased().contains("abcd") ||
        value.contains("qwerty")
        
        return containsSequence
    }
}

