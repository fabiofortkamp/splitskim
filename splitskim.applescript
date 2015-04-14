on run argv
	
	set line_number to item 1 of argv
	set output_file to item 2 of argv
	set master_file to item 3 of argv
	
	set snapshot_name to item 4 of argv
	
	set cmd to "/Applications/Skim.app/Contents/SharedSupport/displayline -b " & line_number & " " & output_file & " " & master_file
	
	do shell script cmd
	
	-- display alert cmd
	
	tell application "Moom"
		
		arrange windows according to snapshot named snapshot_name
	end tell
	
end run
