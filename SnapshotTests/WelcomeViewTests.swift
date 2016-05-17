//
//  WelcomeViewTests.swift
//  CocoaHeadsTestingPresentation
//
//  Created by Andy Obusek on 5/11/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import FBSnapshotTestCase
@testable import CocoaHeadsTestingPresentation

class WelcomeViewTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
//        recordMode = true
        deviceAgnostic = true
    }

    func testWelcomeView_ShowsName_WhenLongName() {
        let toTest = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("WelcomeViewController") as! WelcomeViewController
        toTest.name = "The really really really really clean swifter"
        FBSnapshotVerifyView(toTest.view)
    }

}
