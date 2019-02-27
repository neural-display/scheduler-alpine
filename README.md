# Scheduler

Run tasks as scheduled.

## List of Tasks

- shutdown at :
  - `ENABLE_SHUTDOWN_TIMER=1`
  - `SHUTDOWN_AT=15 22 * * *`
- backlight on/off:
  - `ENABLE_BACKLIGHT_TIMER=1`
  - `BACKLIGHT_ON=0 8 * * *`
  - `BACKLIGHT_OFF=0 22 * * *`
- log:
  - `ENABLE_LOG=1`
  - `LOG_INTERVAL=900` (seconds) 5 minute
- ping:
  - `ENABLE_PING=1`
  - `PING_INTERVAL=60` (seconds)

- Balena Tasks
> Shortcut commands to call request to `Balena Supervisor API`
  - blink
  - ping : check the supervisor is alive and well
  - 

## How to Use

In `docker-compose.yml` labels must be applied for each service that requires them

- io.balena.features.supervisor-api: '1'

## TODO

- Use submodules to pull `scripts` from its repos (reuse for other projects).
