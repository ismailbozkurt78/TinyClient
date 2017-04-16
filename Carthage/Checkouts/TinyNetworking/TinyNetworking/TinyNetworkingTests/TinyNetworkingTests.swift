//
//  TinyNetworkingTests.swift
//  TinyNetworkingTests
//
//  Created by Ismail on 05/01/2017.
//  Copyright © 2017 Ismail Bozkurt. All rights reserved.
//

import XCTest
@testable import TinyNetworking

class TinyNetworkingTests: XCTestCase {
    var restClient: UrlSessionRestClient!
    
    override func setUp() {
        super.setUp()
        restClient = UrlSessionRestClient()
    }
    
    func testExample() {
        let expectation = self.expectation(description: "HTTP GET call")
        let url = URL(string: "https://tiny.com/api.json")
        restClient.GET(url: url!, headers: nil, completion: { (data: Data?, response: URLResponse?, error: Error?) in
            
            expectation.fulfill()
        })
        
        self.waitForExpectations(timeout: 60, handler: { (error: Error?) in
            
        })
    }
}
