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

  s.source_files = 'algorithm/*.swift'

  s.ios.deployment_target = '4.3'
  s.osx.deployment_target = '10.6'

  s.frameworks   = 'Foundation'
  s.swift-version = '4.1'
end
