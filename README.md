# WatchDog

WatchDog is a software program that relive the user process when crashes in critical section.

# usage 
- copy the include directory in the directory of the program that has the critical code to be protected.
- include the "include/watch_dog.h" library in the program. 
- limit the critical section by:
     - StartWatchdog(argv);
     - critical section.
     - StopWatchdog();
- use the make wd command in current directory terminal.
- run the user process.

# remarks 
- in the WD project i used data structures that we implemented in the course.
   - scheduler 
   - priority queue
   - sorted list
   - doubly list
- they are included in the include directory to show them. but in order of encapsulation i could replace the source files by static/shared library