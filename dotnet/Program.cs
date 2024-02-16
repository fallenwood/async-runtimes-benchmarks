using System;
using System.Collections.Generic;
using System.Threading;
using System.Threading.Tasks;

int numTasks = args.Length > 0 ? int.Parse(args[0]) : 100_000;
Console.WriteLine($"Starting {numTasks} tasks");

var tasks = new Task[numTasks];

for (int i = 0; i < numTasks; i++) {
    tasks[i] = Task.Delay(TimeSpan.FromSeconds(10));
}

await Task.WhenAll(tasks);

Console.WriteLine("All tasks complete");
