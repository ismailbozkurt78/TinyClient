//
//  EndPointFactoryTests.swift
//  TinyExercise
//
//  Created by Ismail on 07/01/2017.
//  Copyright © 2017 Tiny. All rights reserved.
//

import XCTest

class EndPointFactoryTests: XCTestCase {

    func testRootEndpoint() {
        let baseUrl = EndPointFactory.baseUrl()
        XCTAssertNotNil(baseUrl)
    }
    
}
