//
//  algoritmTests.swift
//  algoritmTests
//
//  Created by xuwenquan on 2018/9/18.
//  Copyright © 2018年 Qiaobangzhu. All rights reserved.
//

import XCTest
@testable import algorithm

class algorithmTests: XCTestCase {
    
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
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    struct TreeNode{
        var val : Int
        var childs : [TreeNode]
    }
    
    func testTreeTraverse_dfs() {
        let a = TreeNode(val: 0 , childs: [] )
        let b = TreeNode(val: 1, childs: [] )
        let c = TreeNode(val: 2, childs: [a,b] )
        let d = TreeNode(val: 3, childs:[] )
        let e = TreeNode(val: 4, childs: [c,d])
        
        _ = TreeTraverse.dfs( e ,{ ( node ) -> [TreeNode] in
            return node.childs
        }, { (node) -> Bool in
            print("node:\(node.val)")
            return false
        })
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
