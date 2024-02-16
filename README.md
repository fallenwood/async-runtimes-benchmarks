# async-runtimes-benchmarks

This repository contains a few programs written in various programing languages.
Each program spawns N concurrent tasks. The number of tasks is controlled by the 
command line argiment. Each tasks waits 10 seconds and finishes. The programs finish when
all tasks exit.

The purpose of those programs is to measure the memory footprint of concurrent tasks in
different language runtimes. 

## Results - 20240216


Environment
```
CPU: Intel I5-12500H
OS: Microsoft Windows [Version 10.0.22631.3155]
Docker Version: Docker version 25.0.3, build 4debf41
Memory: 16G
```

NOT sure if there was an OOM

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