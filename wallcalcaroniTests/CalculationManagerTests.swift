//
//  CalculationManagerTests.swift
//  wallcalcaroniTests
//
//  Created by Tomasz Jaeschke on 16/10/2018.
//  Copyright © 2018 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculationManagerTests: XCTestCase {

    //sut = System Under Test
    var sut: CalculationManager!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        sut = CalculationManager()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testInit_WhenGivenValues_TakesValues(){
        let calcManager1 = CalculationManager(valueA: 20, valueB: 30, currentOperand: .add, valueEntryArray: [])
        let calcManager2 = CalculationManager(valueA: 20, valueB: 30, currentOperand: .add, valueEntryArray: [])
        XCTAssertEqual(calcManager1, calcManager2)
        
    }
    
    func testValue_AreInitialyZero(){
        XCTAssertEqual(sut.valueA, 0)
        XCTAssertEqual(sut.valueB, 0)
    }
    
    func testOperand_IsInitialyNil(){
        XCTAssertNil(sut.currentOperand)
    }
    
    func testValue_InsertingValues_ChangeValueA(){
        sut.insert(value: 10)
        XCTAssertEqual(sut.valueA, 10)
    }
    
    func testOperand_WhenGivenOperand_SetOperand() {
        sut.insert(value: 30)
        sut.set(operand: .multiply)
        XCTAssertNotNil(sut.currentOperand)
    }

}
