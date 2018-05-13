Function Get-FolderHash{
$folder = Read-Host -Prompt 'Enter target folder'
Get-FileHash -Algorithm SHA256 -Path (Get-ChildItem "$folder\*.*" -Recurse) |
Select-Object Path, Hash |
Export-Csv -Path "File_hashes.csv"
"Output file has been written to the current directory"
}