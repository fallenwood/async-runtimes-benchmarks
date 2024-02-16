Import-Module "./images.psm1"

$images = Get-Images

$numTasks = 1, 10, 1000, 100000, 1000000

$resp = New-Object System.Collections.Generic.List[System.Object]

foreach ($numTask in $numTasks) {
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

Write-Host "Benchmarking complete, results:"

Write-Host "Name`tNumTasks`tMaximumSize(kb)"

foreach ($res in $resp) {
    Write-Host "$($res.Tag)`t$($res.NumTasks)`t$($res.MaximumSize)"
}
