//
//  TreeTraverse.swift
//  algoritm
//
//  Created by xuwenquan on 2018/9/18.
//  Copyright © 2018年 Qiaobangzhu. All rights reserved.
//

import Foundation

public typealias GetChildrensCallback = (Any) -> [Any]
public typealias DoSomethingCallBack = (Any) -> Bool // return true if should stop


@objc open class TreeTraverse : NSObject {
    
    @objc open class func dfs_inorder( _ root : Any? , _ getChildsClosure : GetChildrensCallback , _ doSomethingClosure:  DoSomethingCallBack  ) -> Bool {
        
        if let node = root {
            if doSomethingClosure(node) {
                return true
            }
            
            let childs = getChildsClosure( node )
            for child in childs {
                if dfs_inorder( child , getChildsClosure , doSomethingClosure ) {
                    return true
                }
            }
        }
        
        return false
    }
}
