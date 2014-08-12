#!/usr/bin/env rake
require 'bundler/gem_tasks'
require 'rake/testtask'

desc 'download the latest TypeScript source files'
task 'typescript:download' do
  sh 'npm', 'install', 'typescript'
end

desc 'upgrade TypeScript source files'
task 'typescript:upgrade' => %w(typescript:download) do
  dir = 'lib/typescript-src/support'
  rm_rf dir
  mkdir_p dir
  mv 'node_modules/typescript', "#{dir}/typescript"
end

Rake::TestTask.new do |test|
  test.libs << "test"
  test.test_files = FileList['test/test*.rb']
  test.verbose = true
end

task :default => :test
