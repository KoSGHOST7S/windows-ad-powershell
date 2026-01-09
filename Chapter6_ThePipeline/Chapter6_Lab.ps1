#1) Create two similar, but different, text files. Try comparing them by using Compare-Object. Run something like this: Compare-Object -Reference (Get-Content File1.txt) -Difference (Get-Content File2.txt). If the files have only one line of text that’s different, the command should work.
Compare-Object -Reference (Get-Content .\Chapter6\test1.txt) -Difference (Get-Content .\Chapter6\test2.txt)

#2)What happens if you run Get-Command | Export-CSV commands.CSV | Out-File from the console? Why does that happen?
#As you can see, Export and outfile both fille the pipeline so we get an error

#3)Apart from getting one or more jobs and piping them to Stop-Job, what other means does Stop-Job provide for you to specify the job or jobs you want to stop? Is it possible to stop a job without using Get-Job at all?
#Get-Job will list all jobs as is. If you pipe it to Stop-Job, then the command is stopping all jobs. If you know the job name, you can just use stop-job

#4)What if you want to create a pipe-delimited file instead of a CSV file? You’d still use the Export-CSV command, but what parameters would you specify?
# If you did this you just need to specify what the delimiter is.

Get-Command | Export-CSV commands.txt -Delimiter '|' -NoTypeInformation
#5)How do you include the type information in the # comment line at the top of an exported CSV file?
## By using -NoTypeInformation or #Type

#6)Export-Clixml and Export-CSV both modify the system because they can create and overwrite files. What parameter would prevent them from overwriting an existing file? What parameter would ask whether you were sure before proceeding to write the output file?
## To ensure we dont overwrite files we need or we want to make confirmation before proceeding, we use -Confirm

#7)The operating system maintains several regional settings, which include a default list separator. On US systems, that separator is a comma. How can you tell Export-CSV to use the system’s default separator rather than a comma?
## To use the default Delimter, we can use the command -UseCulture
