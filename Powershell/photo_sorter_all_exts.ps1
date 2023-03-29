
$exts = @(".jpg",".png",".gif") 

if ($args.count -ne 2) {
    Write-Error "Wrong number of arguments: $($args.count)" -Category InvalidArgument
    Write-Error "Usage: photo_sorter SRC_DIR DEST_DIR"
    Exit 1
}

$src_dir = $args[0]
$dest_dir = $args[1]

if(!(Test-Path "$src_dir" -PathType Container)) {
    Write-Error "$src_dir is not a directory" -Category InvalidArgument
    Exit 2
}

if(!(Test-Path "$dest_dir" -PathType Container)) {
    Write-Error "$dest_dir is not a directory" -Category InvalidArgument
    Exit 2
}

Write-Output "Scan directory [$src_dir] for photos..."

Write-Debug "Looking for photos with extension $ext"
Write-Debug "Source Directory: $src_dir"
Write-Debug "Destination Directory: $dest_dir"
$img_format = "^IMG_[0-9]{8}_.*$ext$"

foreach ($img in Get-ChildItem -Path "$src_dir" | Where-Object Extension -In $exts) {
    $img_filename = $img.Name
    Write-Debug "About to process image: $img_filename"
    if ($img_filename -match  $img_format){
        Write-Debug "Good format"
        $tag_year = $img_filename.Substring(4,4)
        $tag_month = $img_filename.Substring(8,2)
        $tag_day = $img_filename.Substring(10,2)
        Write-Debug "y: $tag_year, m: $tag_month, d: $tag_day"
        $dest_img_dir = Join-Path "$dest_dir" "$tag_year" "$tag_month" "$tag_day"
        Write-Debug "will be store in dir: $dest_img_dir"
        if (-not (Test-Path $dest_img_dir)) {
            # mkdir
            New-Item -ItemType Directory $dest_img_dir | Out-Null
        }
        $dest_img_path = "$dest_img_dir\$img_filename"
        if (Test-Path $dest_img_path) {
            Write-Output "Skip photo [${img_filename}]: already exists in $dest_img_dir"
            continue
        }
        Move-Item -Path $img -Destination $dest_img_path
    } else {
        Write-Output "Skip photo [${img_filename}]: wrong format"
    }
}
