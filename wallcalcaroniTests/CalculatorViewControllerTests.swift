//
//  CalculatorViewControllerTests.swift
//  wallcalcaroniTests
//
//  Created by Tomasz Jaeschke on 19/10/2018.
//  Copyright © 2018 Caleb Stultz. All rights reserved.
//

import XCTest
@testable import wallcalcaroni

class CalculatorViewControllerTests: XCTestCase {

    var sut: CalculatorViewController!
    
    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
        let storyboard = UIStoryboard(name: "Main", bundle: nil)
        sut = storyboard.instantiateViewController(withIdentifier: "CalculatorViewController") as! CalculatorViewController
        sut.loadViewIfNeeded()
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        sut = nil
    }
    
    func testAddingValue_ShouldUpdateValue(){
        sut.twoBtn.sendActions(for: .touchUpInside)
        sut.fiveBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "25")
    }
    
    func testEqualsBtn_ShouldPerformCalculationAndUpdateLabel(){
        sut.threeBtn.sendActions(for: .touchUpInside)
        sut.sevenBtn.sendActions(for: .touchUpInside)
        sut.subtractBtn.sendActions(for: .touchUpInside)
        sut.sixBtn.sendActions(for: .touchUpInside)
        sut.equalsBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "31")
    }
    
    func testOperandBtn_ShouldChangeOperandWhenTaped(){
        sut.fourBtn.sendActions(for: .touchUpInside)
        sut.multiplyBtn.sendActions(for: .touchUpInside)
        sut.addBtn.sendActions(for: .touchUpInside)
        sut.fourBtn.sendActions(for: .touchUpInside)
        sut.equalsBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "8")
    }
    
    func testAcBtn_ShouldClearLabel() {
        sut.nineBtn.sendActions(for: .touchUpInside)
        sut.oneBtn.sendActions(for: .touchUpInside)
        sut.acBtn.sendActions(for: .touchUpInside)
        XCTAssertEqual(sut.valueLabel.text, "0")
    }
}
