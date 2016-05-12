//
//  WelcomeSnapshotTests.swift
//  CocoaHeadsTestingPresentation
//
//  Created by Andy Obusek on 5/10/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import FBSnapshotTestCase
@testable import CocoaHeadsTestingPresentation

class WelcomeSnapshotTests: FBSnapshotTestCase {

    override func setUp() {
        super.setUp()
        recordMode = false
    }

    func testWelcomeView_WithName() {
        let welcomeVC = UIStoryboard(name: "Main", bundle: nil).instantiateViewControllerWithIdentifier("WelcomeViewController") as! WelcomeViewController
        welcomeVC.name = "Andy Obusek"
        FBSnapshotVerifyView(welcomeVC.view)
        FBSnapshotVerifyLayer(welcomeVC.view.layer)
    }

}
