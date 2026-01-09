# Exporting Processes to a csv file
Get-Process | Export-CSV procs.csv
#running the csv in vscode
code ./procs.csv
# export files to json
Get-Process | ConvertTo-Json | Out-File procs.json
# Get data back from json file
Get-Comtent ./procs.json | ConvertFrom-Json
#Pipe data to a file
Dir | Out-File Directory.txt
# convert to html
Get-Process -Id $PID | ConvertTo-Html
# Getting all process and killing them all at once
#Get-Process | Stop-Process
#Get process named bash and kill it
Get-Process -Name bash | Stop-Process