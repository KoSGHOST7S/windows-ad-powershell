#1) Getting an alias of a process
Get-Alias -Definition "Get-Process"

#2) Getting the files in a dir
Get-ChildItem /Users

#3) getting the path of items in a dir
Get-ChildItem -Path /Users

#4) Moving a file from /tmp to a new destination
move-itemn -Path /tmp/file.txt -Destination /Users/James
