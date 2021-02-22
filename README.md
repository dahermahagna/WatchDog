# WatchDog

WatchDog is a software program that protect critical code in user process to fail to run.

# usage 
- copy tha include directory in the directory of the program that has the critical code to be protected.
- include the "include/watch_dog.h" library in the program. 
- limit the critical code between StartWatchdog(argv) and StopWatchdog()
- use the make wd command in current directory terminal
- run the user process

