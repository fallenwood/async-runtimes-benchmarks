use std::{env, time::Duration};

use async_std::task;

async fn run() {
    let args: Vec<String> = env::args().collect();
    let num_tasks = match args.len() {
        1 => 100_000,
        _ => args[1].parse().unwrap_or(100_000),
    };

    let mut tasks = Vec::with_capacity(num_tasks);
    for _ in 0..num_tasks {
        tasks.push(task::spawn(async {
            task::sleep(Duration::from_secs(10)).await;
        }));
    }

    for task in tasks {
        task.await;
    }
}

fn main() {
    task::block_on(run());
}