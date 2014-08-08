#!/usr/bin/env rake
require 'bundler/gem_tasks'

desc 'download the latest TypeScript source files'
task 'typescript:download' do
  sh 'npm', 'install', '-g', 'typescript'
end

desc 'upgrade TypeScript source files'
task 'typescript:upgrade' => %i(typescript:download) do
  mv 'node_modules/typescript', 'lib/support'
end
