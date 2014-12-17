//
//  AsyncTests.swift
//  AlienClient
//
//  Created by AlienLi on 14/12/15.
//  Copyright (c) 2014年 ALN. All rights reserved.
//

import UIKit
import XCTest
import Quick
import Nimble


class AsyncTests: QuickSpec {

    override func spec() {
        var handler: ALNNetworkHandler?
        
        beforeEach { () -> () in
            handler = ALNNetworkHandler()
        }
        
        afterEach { () -> () in
            handler = nil
        }
        
        describe("there is a controller of ", { () -> () in
            it("should be not nil", { () -> () in
                expect({ () -> ALNNetworkHandler? in
                    return handler
                }).notTo(beNil())
            })
        })
        
        describe("ALNNetworkHandler has a get method", { () -> () in

            it("should be get", { () -> () in
                var callback: AnyObject?
//                handler!.request(.GET,["account":"alien","pwd":"123456"],.URL).responseJSON{
//                (request,response,JSON,error) in
//                    callback = JSON
//                }
             
//                expect({ () -> Any? in
//                    return callback
//                }).toEventually(beTruthy(), timeout:3)
//                handler!.request("GET", params: ["account": "alien", "pwd": "123456"]).responseJSON{
//                    (request,response,JSON,error) in
//                    callback = JSON
//                }
                
                ALNNetworkHandler.request("GET", params: ["username":"alien","pwd":"123456","act":"query"], WithCompletion: { (request, response, JSON, error) -> Void in
                    println(JSON)
                    callback = JSON
                })
                
                expect(callback).toEventuallyNot(beNil(), timeout: 3.0, pollInterval: 0.5)

            })

        })
    }
}
