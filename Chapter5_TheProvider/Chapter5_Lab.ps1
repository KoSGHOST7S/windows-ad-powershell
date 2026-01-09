#1)Create a new directory called Labs.
New-Item -Name Labs -Path ~/Labs -ItemType Directory
#2)Create a zero-length file named /Labs/Test.txt (use New-Item).
New-Item -Path ~/labs -Name Test.txt -ItemType File
#3)Is it possible to use Set-Item to change the contents of /Labs/Test.txt to -TESTING? Or do you get an error? If you get an error, why?
## Set-Item /Labs/Test.txt -value "-Testing" does not support the changing of file names
#4)Using the Environment provider, display the value of the system environment variable PATH.
Get-Item env:PATH
#5)Use help to determine what the differences are between the -Filter, -Include, and -Exclude parameters of Get-ChildItem.
## -Include and -Exclude must be used with -Recurse or you ar ejust querying a container 
## -Filter only works with the FileSystem Provider