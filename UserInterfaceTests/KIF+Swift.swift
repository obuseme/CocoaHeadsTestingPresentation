//
//  KIF+Swift.swift
//  CocoaHeadsTestingPresentation
//
//  Created by Andy Obusek on 5/10/16.
//  Copyright © 2016 Clean Swifter. All rights reserved.
//

extension XCTestCase {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
}

extension KIFTestActor {
    func tester(file : String = #file, _ line : Int = #line) -> KIFUITestActor {
        return KIFUITestActor(inFile: file, atLine: line, delegate: self)
    }
}