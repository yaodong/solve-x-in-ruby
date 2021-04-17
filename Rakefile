require 'rake/testtask'

Rake::TestTask.new do |t|
  t.libs << 'test'
  t.verbose = true
  t.test_files = FileList['lib/*_test.rb']
end

def names
  FileList['lib/*.md'].map do |f|
    f.split('/').last[0..-4]
  end
end

task :list do
  puts names.join("\n")
end

def toc
  names.map { |m| "    #{m}" }.join("\n")
end

task :readme do
  sep = '<!-- TOC -->'
  file = 'readme.md'

  content = File.open(file) do |f|
    segments = f.read.split(sep)
    segments[1] = "\n#{toc}\n"
    segments.join(sep)
  end

  File.write(file, content)
  puts 'done'
end

task default: %w[test]
