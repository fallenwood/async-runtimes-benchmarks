$version="20240216"

function Get-TagName {
    param (
        [String]
        $tag
    )
    return "cb:${tag}-$version"
}

$images = @{ Tag = "dotnet"; Dockerfile="./dotnet/Dockerfile"; Directory="./dotnet"; },
    @{ Tag = "python-asyncio"; Dockerfile="./python/asyncio/Dockerfile"; Directory="./python/asyncio";  },
    @{ Tag = "python-gevent"; Dockerfile="./python/gevent/Dockerfile"; Directory="./python/gevent"; },
    @{ Tag = "nodejs"; Dockerfile="./nodejs/Dockerfile.node"; Directory="./nodejs"; },
    @{ Tag = "go"; Dockerfile="./go/Dockerfile"; Directory="./go"; }

function Get-Images {
    return $images
}

Export-ModuleMember -Function Get-TagName
Export-ModuleMember -Function Get-Images
