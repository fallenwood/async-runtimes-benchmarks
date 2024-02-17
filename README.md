# async-runtimes-benchmarks

This repository contains a few programs written in various programing languages.
Each program spawns N concurrent tasks. The number of tasks is controlled by the 
command line argiment. Each tasks waits 10 seconds and finishes. The programs finish when
all tasks exit.

The purpose of those programs is to measure the memory footprint of concurrent tasks in
different language runtimes. 


## Environment

```
CPU: Intel I5-12500H
OS: Microsoft Windows [Version 10.0.22631.3155]
Docker Version: Docker version 25.0.3, build 4debf41
Memory: 16G
```

NOT sure if there was an OOM

## Results - 20240217

|Name|NumTasks|MaximumSize(mb)|
|----|--------|---------------|
|dotnet|1|6.27|
|python-asyncio|1|25.73|
|python-gevent|1|16.01|
|nodejs|1|43.31|
|go|1|3.39|
|tokio|1|4.96|
|asyncstd|1|5.07|
|elixir|1|84.39|
|java|1|9.59|
|javavt|1|14.21|
|bun|1|72.46|
|dotnet|10|6.36|
|python-asyncio|10|25.6|
|python-gevent|10|15.9|
|nodejs|10|43.38|
|go|10|3.4|
|tokio|10|3.22|
|asyncstd|10|5.07|
|elixir|10|86.4|
|java|10|14.66|
|javavt|10|16.2|
|bun|10|77.79|
|dotnet|1000|8.79|
|python-asyncio|1000|26.2|
|python-gevent|1000|23.89|
|nodejs|1000|48.21|
|go|1000|7.46|
|tokio|1000|3.3|
|asyncstd|1000|5.57|
|elixir|1000|84.93|
|java|1000|69.3|
|javavt|1000|25.89|
|bun|1000|78.07|
|dotnet|10000|10.37|
|python-asyncio|10000|38.41|
|python-gevent|10000|95.54|
|nodejs|10000|57.42|
|go|10000|34.09|
|tokio|10000|8.79|
|asyncstd|10000|7.7|
|elixir|10000|113.08|
|java|10000|196.12|
|javavt|10000|33.03|
|bun|10000|105.96|
|dotnet|100000|29.5|
|python-asyncio|100000|169.85|
|python-gevent|100000|812.58|
|nodejs|100000|120.69|
|go|100000|260.11|
|tokio|100000|47.84|
|asyncstd|100000|53.47|
|elixir|100000|399.93|
|javavt|100000|194.23|
|bun|100000|284.66|
|dotnet|1000000|197|
|python-asyncio|1000000|1481.43|
|python-gevent|1000000|3364.55|
|nodejs|1000000|507.59|
|go|1000000|2535|
|tokio|1000000|440.92|
|asyncstd|1000000|518.59|
|elixir|1000000|873.25|
|javavt|1000000|2212.08|
|bun|1000000|1381.67|

## Results - 20240216

|Name|NumTasks|MaximumSize(mb)|
|----|--------|---------------|
|dotnet|1|4.15|
|python-asyncio|1|25.58|
|python-gevent|1|15.9|
|nodejs|1|41.34|
|go|1|3.39|
|tokio|1|3.64|
|asyncstd|1|3.08|
|elixir|1|85.26|
|java|1|9.65|
|javavt|1|10.14|
|bun|1|73.85|
|dotnet|10|6.3|
|python-asyncio|10|25.58|
|python-gevent|10|16|
|nodejs|10|41.33|
|go|10|3.39|
|tokio|10|3.25|
|asyncstd|10|3.09|
|elixir|10|86.44|
|java|10|14.44|
|javavt|10|14.26|
|bun|10|76.2|
|dotnet|1000|6.51|
|python-asyncio|1000|26.05|
|python-gevent|1000|23.83|
|nodejs|1000|46.41|
|go|1000|7.46|
|tokio|1000|3.41|
|asyncstd|1000|3.55|
|elixir|1000|90.42|
|java|1000|67.4|
|javavt|1000|17.91|
|bun|1000|83.53|
|dotnet|100000|30.46|
|python-asyncio|100000|169.81|
|python-gevent|100000|812.4|
|nodejs|100000|116.31|
|go|100000|260.31|
|tokio|100000|45.99|
|asyncstd|100000|57.38|
|elixir|100000|477.41|
|javavt|100000|193.86|
|bun|100000|263.62|
|dotnet|1000000|195.13|
|python-asyncio|1000000|1480.95|
|python-gevent|1000000|4419.55|
|nodejs|1000000|505.38|
|go|1000000|2535.27|
|tokio|1000000|438.91|
|asyncstd|1000000|519.64|
|elixir|1000000|1064.56|
|javavt|1000000|2175.15|
|bun|1000000|1379.84|