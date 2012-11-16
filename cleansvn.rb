#!/usr/bin/ruby
require 'fileutils'
require_relative 'os_walk'

#puts ARGV[0]

root, files, dirs = os_walk ARGV[0]

dirs.each do |d|
   if d.to_s[-4,4] == '.svn'
      #puts d.to_s
      FileUtils.rm_rf d.to_s 
   end
end
#puts dirs
