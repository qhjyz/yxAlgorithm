//
//  TreeTraverse.swift
//  algoritm
//
//  Created by xuwenquan on 2018/9/18.
//  Copyright © 2018年 Qiaobangzhu. All rights reserved.
//

import Foundation



@objc open class TreeTraverse : NSObject {
    
    @objc open class func dfs( _ root : Any? , _ getChildsClosure : (Any) -> [Any] , _ doSomethingClosure:  (Any) -> Bool  ) -> Bool {
        
        if let node = root {
            if doSomethingClosure(node) {
                return true
            }
            
            let childs = getChildsClosure( node )
            for child in childs {
                if dfs( child , getChildsClosure , doSomethingClosure ) {
                    return true
                }
            }
        }
        
        return false
    }
}
