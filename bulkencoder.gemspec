Gem::Specification.new do |s|
  s.name        = 'bulkencoder'
  s.version     = '0.0.0'
  s.date        = '2010-04-28'
  s.summary     = 'Bulk Encoding'
  s.description = 'Bulk Encoding'
  s.authors     = ['Jeremy Custenborder']
  s.email       = 'jcustenborder@gmail.com'
  s.files       = Dir.glob("{bin,lib,spec}/**/*")
  s.executables = %w(handbrake_encoder.rb handbrake_queuer.rb)# testcase_generator.rb)
  s.homepage    =
      'https://github.com/jcustenborder/bulk-encoder'
  s.license       = 'MIT'
end