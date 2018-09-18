Pod::Spec.new do |s|
  s.name     = 'yxAlgorithm'
  s.version  = '0.0.1'
  s.license  = 'MIT'
  s.summary  = 'easy to use generice implemented common algorithm'
  s.homepage = 'https://github.com/xuwenquan/yxAlgorithm'
  s.author   = 'xuwenquan'
  s.source   = { :git => 'https://github.com/xuwenquan/yxAlgorithm.git', :tag => "v#{s.version}" }
  s.requires_arc = false

  s.description = %{
    easy to use generice implemented common algorithm

    dfs( node , getChildsClosure , doSomthingClosure )    

  }

  s.source_files = 'yxAlgorithm/*.swift'

  s.ios.deployment_target = '9.0'
  #s.swift-version = '4.1'
end
