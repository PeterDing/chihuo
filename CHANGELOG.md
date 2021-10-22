# Changelog

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
