######################################################################
## Author: William T. Webb								                        	##
## Filename: renameScript.PS1									                  		##
## purpose: renames folders/files and replaces spaces with _    		##
######################################################################

## script that when run in a particular directory it will rename all the folders first and replace spaces with _
gci -Directory -r | where { $_.Name -match "\s" } | rni -newname { $_.Name -replace "\s","_" }

## script again to check all the items within the folders replacing spaces with _
gci -File -r | where { $_.Name -match "\s" } | rni -newname { $_.Name -replace "\s","_" }
