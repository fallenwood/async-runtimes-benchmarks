Import-Module "./images.psm1"

$images = Get-Images

foreach ($image in $images) {
    $tag = Get-TagName $image.Tag

    Write-Host "Building image for $tag"
    
    docker build -t $tag -f $image.Dockerfile $image.Directory
}

Write-Host "Docker Images built, run ""pwsh ./benchmark.ps1"" to start benchmarking..."
