$version="20240216"

function Get-TagName {
    param (
        [String]
        $tag
    )
    return "cb:${tag}-$version"
}

$images = @{ Tag = "dotnet"; Dockerfile="./dotnet/Dockerfile"; Directory="./dotnet"; Command="./dotnet" },
    @{ Tag = "python-asyncio"; Dockerfile="./python/asyncio/Dockerfile"; Directory="./python/asyncio"; Command = "python3 main.py" }
    # @{ Tag = "python-gevent"; Dockerfile="./python/gevent/Dockerfile"; Directory="./python/geven"; Command = "python3 main.py"}

function Get-Images {
    return $images
}

Export-ModuleMember -Function Get-TagName
Export-ModuleMember -Function Get-Images
