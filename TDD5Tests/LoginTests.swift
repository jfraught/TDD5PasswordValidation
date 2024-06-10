//
//  LoginTests.swift
//  LoginTests
//
//  Created by Jordan Fraughton on 6/10/24.
//

import XCTest
@testable import TDD5

final class LoginTests: XCTestCase {
    var password = Password(value: "")
    
    let correctPassword = "Cetics2024!"
    let passwordBelowEight = "jord1!"
    let passwordOverThirty = "b%e8j^NtL7s5#vE9@6W*f3PdQmG^YzH"
    let lowercasePassword = "jordan94!"
    let uppercasePassword = "JORDAN94!"
    let passwordWithoutNumber = "jordanf!"
    let passwordWithoutSpecialChar = "jordanf2"
    let passwordWithNumberSequence = "12345678!"
    let passwordWithSameNumberSequence = "4444jord!"
    let passwordWithAlphaSequence = "Abcdefg!1"
    let paswordWithQwerty = "qwerty1325!"

    func testCheckPassword() throws {
        password.value = correctPassword
        XCTAssert(password.isValid)
    }
    func testCheckCharCount() throws {
        password.value = passwordBelowEight
        XCTAssertFalse(password.hasCorrectCharCount)
    }

    func testCheckContainsUpperAndLower() throws {
        password.value = lowercasePassword
        XCTAssertFalse(password.hasUpperAndLower)
        
        password.value = uppercasePassword
        XCTAssertFalse(password.hasUpperAndLower)
    }
    
    func testcheckContainsNumber() throws {
        password.value = passwordWithoutNumber
        XCTAssertFalse(password.hasNumber)
    }
    
    func testcheckContainsSpecialCharacter() throws {
        password.value = passwordWithoutSpecialChar
        XCTAssertFalse(password.hasSpecialCharacter)
    }
    
    func testcheckContainsSequences() throws {
        password.value = passwordWithNumberSequence
        XCTAssert(password.hasSequences)
        
        password.value = passwordWithAlphaSequence
        XCTAssert(password.hasSequences)
        
        password.value = passwordWithSameNumberSequence
        XCTAssert(password.hasSequences)
    }
}
