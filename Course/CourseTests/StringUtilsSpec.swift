//
//  StringUtilsSepc.swift
//  CourseTests
//
//  Created by Maria Tupich on 16/01/24.
//

import XCTest
@testable import Course

final class StringUtilsSpec: XCTestCase {
    
    func testIsValidEmail() {
        let email = "curso@gmail.com"
        let value = email.isValidEmail()
        
        XCTAssert(value == true)
    }
    
    func testRemoveWhiteSpace() {
        let text = "Olá Mundo"
        let newText = text.removeWhitespace()
        
        XCTAssert(true)
    }
    
    func testReplaceFunction(){
        let text = "Olá Mundo"
        let value = text.replace(string: text, replacement: "")
        
        XCTAssert(value.contains("") == true)
        
        
    }

}


