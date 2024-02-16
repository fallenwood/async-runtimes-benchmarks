import gevent

def perform_task():
    gevent.sleep(10)

def main(num_tasks):
    tasks = [None] * num_tasks

    for task_id in range(num_tasks):
        task = gevent.spawn(perform_task)
        tasks[task_id] = task

    gevent.joinall(tasks)

if __name__ == "__main__":
    if len(sys.argv) > 1:
        num_tasks = int(sys.argv[1])
    else:
        num_tasks = 100000

    main(num_tasks)
    print("All tasks completed")