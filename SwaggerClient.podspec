Pod::Spec.new do |s|
  s.name = 'SwaggerClient'
  s.ios.deployment_target = '8.0'
  s.osx.deployment_target = '10.9'
  s.version = '0.2'
  s.source = git@github.com:buremba/rakam-client.git
  s.authors = Burak Emre Kabakci
  s.social_media_url = 'https://twitter.com/rakam-analytics'
  s.license = MIT
  s.homepage = 'https://rakam.io'
  s.summary = 'Client API for Rakam Analytics API'
  s.documentation_url = 'https://api.rakam.io'
  s.source_files = 'SwaggerClient/Classes/Swaggers/**/*.swift'
  s.dependency 'Alamofire', '~> 3.1.5'
end
