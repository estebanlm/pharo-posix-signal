# pharo-posix-signal
A simple implementation of signal C function.

# Installation
```Smalltalk
Metacello new 
  repository: 'github://estebanlm/pharo-posix-signal';
  baseline: 'POSIXSignal';
  load.
```

# Usage
```Smalltalk
trap := POSIXSignal SIGINT.
trap installWith: [ :signal |  'Trapped!' crLog ].
"Uninstalling"
trap uninstall
```
constants are here: 
http://www.comptechdoc.org/os/linux/programming/linux_pgsignals.html

for linux, mac: 
https://en.wikipedia.org/wiki/Unix_signal
http://www.gnu.org/software/libc/manual/html_node/Basic-Signal-Handling.html

for windows, 
https://msdn.microsoft.com/en-us/library/xdkz3x12.aspx

... and a small explanation: 
http://www.thegeekstuff.com/2012/03/catch-signals-sample-c-code/
