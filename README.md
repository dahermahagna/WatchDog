# WatchDog

WatchDog is a software program that relive the user process when crashes in critical section.

# usage 
- copy the include directory in the directory of the program that has the critical code to be protected.
- include the "include/watch_dog.h" library in the program. 
- limit the critical section by:
     - StartWatchdog(argv);
        critical section.
     - StopWatchdog();
- use the make wd command in current directory terminal.
- run the user process.

