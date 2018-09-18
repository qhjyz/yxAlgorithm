# yxAlgorithm

Generic Implementation of Common Algorithm
Easy to use 

# install

git checkout --depth=1 https://github.com/xuwenquan/yxAlgorithm.git

// in Podfile

pod 'yxAlgorithm', :path => 'TODO: PATH JUST CHECKOUT'

# tutorial
   to perform a tree depth first search
   
         dps( node , getChilds , doSomthing )
         
         // getChilds -- a closure to return childs of a given node
         // dosomthing -- a cloure to perform on given node, return true if it is found


# code
        #import yxAlgorithm

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
