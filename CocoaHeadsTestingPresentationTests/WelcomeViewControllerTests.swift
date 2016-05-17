//
//  WelcomeViewControllerTests.swift
//  CocoaHeadsTestingPresentation
//
//  Created by Andy Obusek on 5/11/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

import XCTest
@testable import CocoaHeadsTestingPresentation

class WelcomeViewControllerTests: XCTestCase {

    func testViewDidLoad_SetsName_WhenNameIsProvided() {
        class MockWelcomeViewController: WelcomeViewController {
            let mockWelcomeLabel = UILabel()

            override var welcomeLabel: UILabel! {
                get {
                    return mockWelcomeLabel
                }
                set {

                }
            }
        }

        let toTest = MockWelcomeViewController()
        let name = "Andy"
        toTest.name = name
        toTest.viewDidLoad()
        XCTAssertEqual("Welcome \(name)", toTest.welcomeLabel.text)
    }

}
