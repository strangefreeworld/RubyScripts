require 'fileutils'
require_relative 'os_walk'

delete_files = [ '.obj', '.pch', '.suo', '.ncb', '.sdf', '.sbr', '.tlog', '.pdb', '.ipch', '.res', '.user', '.aps' ]

files = filelist ARGV[0]

files.each do |f|
   if delete_files.find_index f.extname
      puts "Found file: #{f}"
	  FileUtils.rm f.to_s
   end
end