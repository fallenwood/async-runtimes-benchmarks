Import-Module "./images.psm1"

function Get-Mb {
    param (
        [String]
        $size
    )
    
    return [math]::Round([int]$size / 1024.0, 2)
}

$images = Get-Images

$numTasksR1 = 1, 10, 1000
$numTasksR2 = 100000, 1000000

$resp = New-Object System.Collections.Generic.List[System.Object]

foreach ($numTask in $numTasksR1) {
    foreach ($image in $images) {
        $tag = Get-TagName $image.Tag

        Write-Host "Benchmarking $($image.Tag) with $numTask threads/coroutines..."
    
        $maximumSizeString = docker run --rm $tag $numTask 2>&1 | Select-String "Maximum resident set size" | Out-String

        $maximumSize = $maximumSizeString.Split(": ")[1].Trim()

        $resp.Add(@{
            Tag = $image.Tag;
            NumTasks = $numTask
            MaximumSize = $maximumSize
        })
    }
}

foreach ($numTask in $numTasksR2) {
    foreach ($image in $images) {
        if ($image.SkipR2 -eq $true) {
            continue
        }

        $tag = Get-TagName $image.Tag

        Write-Host "Benchmarking $($image.Tag) with $numTask threads/coroutines..."
    
        $maximumSizeString = docker run --rm $tag $numTask 2>&1 | Select-String "Maximum resident set size" | Out-String

        $maximumSize = $maximumSizeString.Split(": ")[1].Trim()

        $resp.Add(@{
            Tag = $image.Tag;
            NumTasks = $numTask
            MaximumSize = $maximumSize
        })
    }
}

Write-Host "Benchmarking complete, results:"

Write-Host "Name`tNumTasks`tMaximumSize(mb)"

foreach ($res in $resp) {
    $mb = Get-Mb $res.MaximumSize
    Write-Host "$($res.Tag)`t$($res.NumTasks)`t$($mb)"
}