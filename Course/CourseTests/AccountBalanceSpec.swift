//
//  AccountBalanceSpec.swift
//  CourseTests
//
//  Created by Maria Tupich on 16/01/24.
//

import XCTest
@testable import Course

final class AccountBalanceSpec: XCTestCase {

    var account: AccountBalance?
    
    func testeGetSpecialBalance100() {
        account = AccountBalance(balance: 99)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 109, "O saldo menor que 100, deveretornar o saldo + 10")
    }

    func testeGetSpecialBalance900() {
        account = AccountBalance(balance: 900)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 1900, "O saldo menor que 500, deveretornar o saldo + 100")
    }
    
    func testeGetSpecialBalance400() {
        account = AccountBalance(balance: 400)
        let specialBalance = account?.getSpecialLimit()
        
        XCTAssertEqual(specialBalance, 400, "O saldo menor que 500 e maior que 100, devere tornar o saldo")
    }
}
