"
I'm an implementation of POSIX signal,

Usage: 
""Installing""
trap := POSIXSignal SIGINT.
trap installWith: [ :signal |  'Trapped!' crLog ].
""Uninstalling""
trap uninstall

constants are here: 
http://www.comptechdoc.org/os/linux/programming/linux_pgsignals.html

for linux, mac: 
https://en.wikipedia.org/wiki/Unix_signal
http://www.gnu.org/software/libc/manual/html_node/Basic-Signal-Handling.html

for windows, 
https://msdn.microsoft.com/en-us/library/xdkz3x12.aspx

... and a small explanation: 
http://www.thegeekstuff.com/2012/03/catch-signals-sample-c-code/
"
Class {
	#name : #POSIXSignal,
	#superclass : #Object,
	#instVars : [
		'callback',
		'signal',
		'installed'
	],
	#classVars : [
		'SIGABRT',
		'SIGALRM',
		'SIGBUS',
		'SIGCHLD',
		'SIGCONT',
		'SIGEMT',
		'SIGFPE',
		'SIGHUP',
		'SIGILL',
		'SIGINFO',
		'SIGINT',
		'SIGIO',
		'SIGIOT',
		'SIGKILL',
		'SIGPIPE',
		'SIGPOLL',
		'SIGPROF',
		'SIGQUIT',
		'SIGSEGV',
		'SIGSTOP',
		'SIGSYS',
		'SIGTERM',
		'SIGTRAP',
		'SIGTSTP',
		'SIGTTIN',
		'SIGTTOU',
		'SIGURG',
		'SIGUSR1',
		'SIGUSR2',
		'SIGVTALRM',
		'SIGWINCH',
		'SIGXCPU',
		'SIGXFSZ'
	],
	#category : #POSIXSignal
}

{ #category : #'instance creation' }
POSIXSignal class >> SIGABRT [
	^ self signal: SIGABRT
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGALRM [
	^ self signal: SIGALRM
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGBUS [
	^ self signal: SIGBUS
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGCHLD [
	^ self signal: SIGCHLD
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGCONT [
	^ self signal: SIGCONT
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGEMT [
	^ self signal: SIGEMT
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGFPE [
	^ self signal: SIGFPE
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGHUP [
	^ self signal: SIGHUP
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGILL [
	^ self signal: SIGILL
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGINFO [
	^ self signal: SIGINFO
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGINT [
	^ self signal: SIGINT
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGIO [
	^ self signal: SIGIO
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGIOT [
	^ self signal: SIGIOT
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGKILL [
	^ self signal: SIGKILL
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGPIPE [
	^ self signal: SIGPIPE
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGPOLL [
	^ self signal: SIGPOLL
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGPROF [
	^ self signal: SIGPROF
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGQUIT [
	^ self signal: SIGQUIT
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGSEGV [
	^ self signal: SIGSEGV
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGSTOP [
	^ self signal: SIGSTOP
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGSYS [
	^ self signal: SIGSYS
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGTERM [
	^ self signal: SIGTERM
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGTRAP [
	^ self signal: SIGTRAP
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGTSTP [
	^ self signal: SIGTSTP
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGTTIN [
	^ self signal: SIGTTIN
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGTTOU [
	^ self signal: SIGTTOU
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGURG [
	^ self signal: SIGURG
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGUSR1 [
	^ self signal: SIGUSR1
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGUSR2 [
	^ self signal: SIGUSR2
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGVTALRM [
	^ self signal: SIGVTALRM
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGWINCH [
	^ self signal: SIGWINCH
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGXCPU [
	^ self signal: SIGXCPU
]

{ #category : #'instance creation' }
POSIXSignal class >> SIGXFSZ [
	^ self signal: SIGXFSZ
]

{ #category : #'class initialization' }
POSIXSignal class >> initialize [ 
	SIGHUP 		:= 1.
	SIGINT			:= 2.
	SIGQUIT		:= 3.
	SIGILL			:= 4.
	SIGTRAP		:= 5.
	SIGABRT		:= 6.
	SIGPOLL		:= 7.
	SIGIOT			:= SIGABRT.
	SIGEMT			:= 7.
	SIGFPE			:= 8.
	SIGKILL		:= 9.
	SIGBUS			:= 10.
	SIGSEGV		:= 11.
	SIGSYS			:= 12.
	SIGPIPE		:= 13.
	SIGALRM		:= 14.
	SIGTERM		:= 15.
	SIGURG			:= 16.
	SIGSTOP		:= 17.
	SIGTSTP		:= 18.
	SIGCONT		:= 19.
	SIGCHLD		:= 20.
	SIGTTIN		:= 21.
	SIGTTOU		:= 22.
	SIGIO			:= 23.
	SIGXCPU		:= 24.
	SIGXFSZ		:= 25.
	SIGVTALRM 	:= 26.
	SIGPROF		:= 27.
	SIGWINCH 		:= 28.
	SIGINFO		:= 29.
	SIGUSR1 		:= 30.
	SIGUSR2 		:= 31.
]

{ #category : #'instance creation' }
POSIXSignal class >> new [
	^ self error: 'Use #signal:'
]

{ #category : #'instance creation' }
POSIXSignal class >> signal: aNumber [
	^ self basicNew 
		initializeSignal: aNumber;
		yourself
]

{ #category : #initialization }
POSIXSignal >> initialize [
	super initialize.
	installed := false
]

{ #category : #initialization }
POSIXSignal >> initializeSignal: aNumber [
	signal := aNumber.
	self initialize
	
]

{ #category : #installing }
POSIXSignal >> installWith: aBlock [
	| result |
	
	self isInstalled ifTrue: [ self uninstall ].
	callback := self newCallback: aBlock.
	result := self primSignal: self signal callback: callback thunk.
	result = -1 ifTrue: [ self error: 'Could not install callback' ].
	installed := true
]

{ #category : #testing }
POSIXSignal >> isInstalled [
	^ installed
]

{ #category : #private }
POSIXSignal >> newCallback: aBlock [
	^ FFICallback 
		signature: #(void (int sigint)) 
		block: aBlock
]

{ #category : #private }
POSIXSignal >> primSignal: signal callback: aCallback [
	^ self ffiCall: #(long signal(int signal, void *aCallback)) module: LibC
]

{ #category : #accessing }
POSIXSignal >> signal [
	^ signal
]

{ #category : #installing }
POSIXSignal >> uninstall [
	self primSignal: self signal callback: ExternalAddress null.
	callback := nil
]
