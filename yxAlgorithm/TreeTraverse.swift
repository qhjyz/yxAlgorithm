//
//  TreeTraverse.swift
//  algoritm
//
//  Created by xuwenquan on 2018/9/18.
//  Copyright © 2018年 Qiaobangzhu. All rights reserved.
//

import Foundation

open class TreeTraverse{
    
    open class func dfs<T>( _ root : T? , _ getChildsClosure : (T) -> [T] , _ doSomethingClosure:  (T) -> Bool  ) -> Bool {
        
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
