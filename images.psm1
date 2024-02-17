$version="20240216"

$imageBaseName="cb"

function Get-TagName {
    param (
        [String]
        $tag
    )
    return "${imageBaseName}:${tag}-$version"
}

$images = @{ Tag = "dotnet"; Dockerfile="./dotnet/Dockerfile"; Directory="./dotnet"; },
    @{ Tag = "python-asyncio"; Dockerfile="./python/asyncio/Dockerfile"; Directory="./python/asyncio";  },
    @{ Tag = "python-gevent"; Dockerfile="./python/gevent/Dockerfile"; Directory="./python/gevent"; },
    @{ Tag = "nodejs"; Dockerfile="./nodejs/Dockerfile.node"; Directory="./nodejs"; },
    @{ Tag = "go"; Dockerfile="./go/Dockerfile"; Directory="./go"; },
    @{ Tag = "tokio"; Dockerfile="./rust/tokio/Dockerfile"; Directory="./rust/tokio"; },
    @{ Tag = "asyncstd"; Dockerfile="./rust/asyncstd/Dockerfile"; Directory="./rust/asyncstd"; },
    @{ Tag = "elixir"; Dockerfile="./elixir/Dockerfile"; Directory="./elixir"; },
    @{ Tag = "java"; Dockerfile="./java/Dockerfile.thread"; Directory="./java"; SkipR2 = $true; },
    @{ Tag = "javavt"; Dockerfile="./java/Dockerfile.vthread"; Directory="./java"; },
    @{ Tag = "bun"; Dockerfile="./nodejs/Dockerfile.bun"; Directory="./nodejs"; }

function Get-Images {
    return $images
}

function Get-ImageBaseName {
    return $imageBaseName
}

Export-ModuleMember -Function Get-ImageBaseName
Export-ModuleMember -Function Get-TagName
Export-ModuleMember -Function Get-Images
