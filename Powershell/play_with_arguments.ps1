
Write-Host $args
Write-Host $args.count
Write-Host $args[0]  # 1st arg
Write-Host $args[1]  # 2nd arg
Write-Host $args[2]  # 3rd arg
foreach ($arg in $args) {
    Write-Host $arg
}
