######################################################################
## William T. Webb													##
## Renaming Script													##
## purpose: renames folders/files and replaces spaces with _		##
######################################################################


## script that when run in a particular directory it will rename all the folders first and replace spaces with _
Get-ChildItem -Directory -r | where { $_.Name -match "\s" } | rni -newname { $_.Name -replace "\s","_" }

## script again to check all the items within the folders replacing spaces with _
Get-ChildItem -File -r | where { $_.Name -match "\s" } | rni -newname { $_.Name -replace "\s","_" }

