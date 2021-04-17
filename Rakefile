require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.verbose = true
  t.test_files = FileList['lib/*_test.rb']
end

task default: %w[test]
