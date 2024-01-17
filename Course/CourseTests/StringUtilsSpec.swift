//
//  StringUtilsSepc.swift
//  CourseTests
//
//  Created by Maria Tupich on 16/01/24.
//

import Quick
import Nimble
@testable import Course

class StringUtilsSpec: QuickSpec {
    
    override class func spec() {
        describe("StringUtilsSpec") {
            context("Is a valid email") {
                
                it("Valid email") {
                    let email = "curso@gmail.com"
                    let isValidEmail = email.isValidEmail()
                    expect(isValidEmail).to(beTrue())
                }
                
                it("Invalid email") {
                    let text = "Olá Mundo"
                    let isValidEmail = text.isValidEmail()
                    expect(isValidEmail).to(beFalse())
                }
                
            }
        }
    }
}
