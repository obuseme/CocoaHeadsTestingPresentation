//
//  WelcomeScreenTests.swift
//  CocoaHeadsTestingPresentation
//
//  Created by Andy Obusek on 5/11/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import XCTest
import KIF

class WelcomeScreenTests: KIFTestCase {

    func testWelcomeFlow_SetsName_WhenNameProvided() {
        let name = "Andy"
        tester().clearTextFromAndThenEnterText("\(name)", intoViewWithAccessibilityLabel: "Name field")
        tester().tapViewWithAccessibilityLabel("Save, and continue")
        tester().waitForViewWithAccessibilityLabel("Welcome \(name)") as! UILabel
        tester().tapViewWithAccessibilityLabel("Start Over")
    }

    func testWelcomeFlow_SetsName_WhenReallyLongNameProvided() {
        let name = "The clean swifter"
        tester().clearTextFromAndThenEnterText("\(name)", intoViewWithAccessibilityLabel: "Name field")
        tester().tapViewWithAccessibilityLabel("Save, and continue")
        tester().waitForViewWithAccessibilityLabel("Welcome \(name)") as! UILabel
        tester().tapViewWithAccessibilityLabel("Start Over")
    }
}
