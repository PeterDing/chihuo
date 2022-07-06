# Changelog

## v0.3.4 - 2022-07-06

### Changed

- Send back user interrupted tasks to the head of the queue.

## v0.3.3 - 2022-04-07

### Added

- Keep event loop alive

  Event loop could be dead if all tasks are keeping.
  The task keeps event loop to listen for events. Because it be woke up periodically.

## v0.3.2 - 2022-04-06

### Changed

- Handle `asyncio.CancelledError`

  If capturing the `asyncio.CancelledError`, sending back the task to backend.

- Handle signal by following steps:

  1. send back all running tasks
  2. cancel all running tasks
  3. stop the running loop
  4. exit

## v0.3.1 - 2022-01-24

### Fixed

- Be compatible for Python3.8

## v0.3.0 - 2022-01-18

### Added

- Add type hints
- Add `ChihuoLoop.task_finished` and `ChihuoLoop.task_exists`
- Add `name` option for `loop.create_task`
- Add log at end when `ChihuoLoop._run_forever` to be False

### Changed

- Change `ChihuoLoop._run` to `ChihuoLoop._run_`
- Release `semaphore` after `ChihuoLoop.stop` set to True
- Change `ChihuoType` name as `TaskType`; Use `Enum` for `TaskType`
- Handle INT and TERM signals as following steps:

  1. Set `factory.stop` to True
  2. Cancel all running tasks except the `TaskType.Final` and `TaskType.TaskLoop` tasks.
  3. Cancel all `TaskType.TaskLoop` tasks except the `TaskType.Final`
  4. Stop the loop

## v0.2.5 - 2021-10-22

### Changed

- Update `lodis-py` to `0.2.1`

## v0.2.4 - 2021-09-23

### Added

Add `chihuo.adapter.Wrapper` methods:

- `clear_finished_tasks` to clear all unfinished tasks in the queue
- `clear_unfinished_tasks` to clear all finished tasks
- `clear_all` to clear all unfinished and finished tasks

## v0.2.3 - 2021-09-22

### Added

- Support to check the end event there is no running task and the size of task queue is 0.

## v0.2.2 - 2021-07-23

### Fixed

- Adding fail tasks back is needed `ignore_running=False`.

  `ignore_running`: bool

  if `ignore_running` is true, the task will be added to the task queue
  only if there is not a task which is running with same task_id

## v0.2.1 - 2021-07-23

### Fixed

- Adding fail tasks back is needed `ignore_running=True`.

### Changed

- `chihuo.util.aretry(times=-1)` lets to retry forever.

## v0.2.0 - 2021-07-20

### Added

- `chihuo.run` adapts any instance of ChihuoLoop.

### Changed

- Unneed to release task manually.

### Fixed

- Fix the bug that the process can not be canceled by signal INT.
