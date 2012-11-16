require 'win32ole'
require 'fileutils'
require_relative 'os_walk'

archive = ARGV[0]

shell = WIN32OLE.new( 'Shell.Application' )

shell.ShellExecute( "C:\\Program Files\\7-Zip\\7z.exe", " x #{archive} -oC:\\Apps", '', 'open', 4 )

sleep 15

ctbase = File.basename archive, ".7z"

fullnewpath = "C:\\Apps\\" + ctbase + "\\CTLaunch.exe"

newctpath = "C:\\Apps\\" + ctbase

FileUtils.cp "C:\\Apps\\cherrytree\\CTLaunch.exe", fullnewpath

FileUtils.rm_rf "C:\\Apps\\cherrytree"

FileUtils.mv newctpath, "C:\\Apps\\cherrytree"

#ctbase2 = ctbase.gsub "_portable", ""
#puts ctbase2

mainctpath = "C:\\Apps\\cherrytree\\" + ctbase.gsub( "_portable", "" )

FileUtils.mv mainctpath, "C:\\Apps\\cherrytree\\cherrytree"
#puts fullnewdir


