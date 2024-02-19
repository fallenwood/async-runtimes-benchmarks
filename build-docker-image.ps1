Import-Module "./images.psm1"

$container = $ENV:CB_CONTAINER ?? "docker"

$images = Get-Images

foreach ($image in $images) {
    $tag = Get-TagName $image.Tag

    Write-Host "Building image for $tag"
    
    Invoke-Expression "$container build -t $tag -f ${$image.Dockerfile} ${$image.Directory}"
}

Write-Host "Docker Images built, run ""pwsh ./benchmark.ps1"" to start benchmarking..."
