Class {
	#name : #BaselineOfPOSIXSignal,
	#superclass : #BaselineOf,
	#category : #BaselineOfPOSIXSignal
}

{ #category : #baselines }
BaselineOfPOSIXSignal >> baseline: spec [
	<baseline>
	
	spec for: #common do: [ 
		spec package: #POSIXSignal ]
]
