require 'pathname'

   def os_walk( dir )
      root = Pathname( dir )
      files, dirs = [], []
      Pathname( root ).find do |path|
         unless path == root
            dirs << path if path.directory?
            files << path if path.file?
         end
      end
      [root, files, dirs]
   end
   
   def filelist( dir )
      root = Pathname( dir )
	  files = []
	  Pathname( root ).find do |path|
	    unless path == root
		   files << path if path.file?
		end
      end
	  files
   end
   
   def dirlist( dir )
      root = Pathname( dir )
	  dirs = []
	  Pathname( root ).find do |path|
	    unless path == root
		   dirs << path if path.directory?
		end
      end
	  dirs
   end

