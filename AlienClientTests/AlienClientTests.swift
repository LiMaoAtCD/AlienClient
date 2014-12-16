//
//  AlienClientTests.swift
//  AlienClientTests
//
//  Created by AlienLi on 14/12/9.
//  Copyright (c) 2014年 ALN. All rights reserved.
//

import UIKit
import XCTest
import Alamofire

class AlienClientTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        var expectation: XCTestExpectation = self.expectationWithDescription("high expectation")
        
        Alamofire.request(.GET, "192.168.2.132:3000", parameters: ["act":"login","name":"alienli","pwd":"123456"], encoding: .URL).responseString { (request, response, string, error) -> Void in
            
//            XCTAssertNil(error, "request should be not nil")
            XCTAssertNotNil(string, "something should be callback")
            expectation.fulfill()
        }

        
//        self.waitForExpectationsWithTimeout(<#XCTestCase#>)
//        self.waitForExpectationsWithTimeout(10.0, handler: { (error) -> Void in
//            XCTAssert(callbackString?, <#message: String#>)
//        })
        self.waitForExpectationsWithTimeout(2.0, handler: { (err) -> Void in
//            XCTAssert(err != nil, "err should be nil")
        
        })
        
        
        
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measureBlock() {
            // Put the code you want to measure the time of here.
        }
    }
    
}
