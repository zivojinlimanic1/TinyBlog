Class {
	#name : #TBScreenComponent,
	#superclass : #WAComponent,
	#instVars : [
		'header'
	],
	#category : #'TinyBlog-Components'
}

{ #category : #'as yet unclassified' }
TBScreenComponent >> blog [
"Return the current blog. In the future we will ask the
session to return the blog of the currently logged in user."
^ TBBlog current
]

{ #category : #hooks }
TBScreenComponent >> children [
^ { header }
]

{ #category : #'as yet unclassified' }
TBScreenComponent >> createHeaderComponent [
^ TBHeaderComponent from: self
]

{ #category : #initialization }
TBScreenComponent >> initialize [
super initialize.
header := self createHeaderComponent
]

{ #category : #rendering }
TBScreenComponent >> renderContentOn: html [
html render: header

]
