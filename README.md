# makesync

Sync via Makefile

## Why Not `rsync`?

`rsync` may **touch** the file, which means it will change file timestamp everytime.

which is really bad.
