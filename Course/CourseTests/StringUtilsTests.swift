//
//  StringUtilsTests.swift
//  CourseTests
//
//  Created by Maria Tupich on 17/01/24.
//

// Importa as bibliotecas Quick e Nimble para testes.
import Quick
import Nimble

// Importa o módulo "Course" para testar o código contido nele.
@testable import Course

// Declaração de uma classe de teste para StringUtils, que herda de QuickSpec.
class StringUtilsTests: QuickSpec {
    
    // Método de classe para configurar as especificações de teste.
    override class func spec() {
        
        // Descreve o comportamento da classe StringUtils.
        describe("StringUtils") {
            
            // Contexto para testar a função isValidEmail.
            context("Is valid email") {
                
                // Especificação para um email válido.
                it("Valid email") {
                    // Define um email válido.
                    let email = "curso@gmail.com"
                    // Chama a função isValidEmail() e verifica se o resultado é verdadeiro.
                    let isValidEmail = email.isValidEmail()
                    // Usa a expectativa do Nimble para verificar se isValidEmail é true.
                    expect(isValidEmail).to(beTrue())
                }
                
                // Especificação para um email inválido.
                it("Invalid email") {
                    // Define um email inválido.
                    let email = "curso"
                    // Chama a função isValidEmail() e verifica se o resultado é falso.
                    let isValidEmail = email.isValidEmail()
                    // Usa a expectativa do Nimble para verificar se isValidEmail é false.
                    expect(isValidEmail).to(beFalse())
                }
            }
        }
    }
}

