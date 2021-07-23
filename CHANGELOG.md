# Changelog

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
